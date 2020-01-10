import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homefit/core/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';
import 'package:homefit/core/app_reducer.dart';
import 'package:homefit/core/app_routes.dart';
import 'package:homefit/core/app_constants.dart';
import 'package:homefit/home/views/verify_user.dart';
import 'package:homefit/home/views/splash.dart';
import 'package:homefit/utils/preferences.dart';
import 'package:homefit/core/app_config.dart';
import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:homefit/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FlutterCrashlytics().initialize();
  bool isInDebugMode = false;
  FlutterError.onError = (FlutterErrorDetails details) {    
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {      
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };
  await FlutterCrashlytics().initialize(); 
  
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  _firebaseMessaging.requestNotificationPermissions(
  const IosNotificationSettings(sound: true, badge: true, alert: true));
  _firebaseMessaging.onIosSettingsRegistered
      .listen((IosNotificationSettings settings) {
  });          
  _firebaseMessaging.configure(
    onMessage: (Map<String, dynamic> message) async {       
      Fluttertoast.showToast(
        msg: message["aps"]["alert"]["body"],
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 10,
        backgroundColor: dhfYellow,
        textColor: Colors.black87,
        fontSize: 16.0
      );
    },
    onLaunch: (Map<String, dynamic> message) async {      
    },
    onResume: (Map<String, dynamic> message) async {
    },
  );   
        
  _firebaseMessaging.getToken().then((String tokenStr) {        
    assert(tokenStr != null); 
    notificationStr = tokenStr;              
  });
  
  final store = Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [thunkMiddleware],
  );
  token = await Preferences.getAccessToken();
  deviceId = await Utils.getDeviceId();
  if (token == "" || token == null) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ])
    .then((_) {
      runZoned<Future<Null>>(() async {
        runApp(
          StoreProvider(
            store: store,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,        
              title: 'DHF HomeFit',
              theme:
                ThemeData(
                  primaryColor: dhfYellow, 
                  accentColor: Colors.blue
                ),
              home: Splash(),
              routes: routes,
              builder: (context, child) {
                var shortestSide = MediaQuery.of(context).size.shortestSide;
                mobileLayout = shortestSide < 600; 
                return MediaQuery(
                  child: child,
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                );         
              },
            ),
          ),
        );
      }, onError: (error, stackTrace) async {          
        await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
      });
    });
  } else {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ])
    .then((_) {
      runZoned<Future<Null>>(() async {
        runApp(
          StoreProvider(
            store: store,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,        
              title: 'DHF HomeFit',
              theme:
                ThemeData(
                  primaryColor: dhfYellow, 
                  accentColor: Colors.blue
                ),
              home: VerifyUser(),
              routes: routes,
              builder: (context, child) {
                var shortestSide = MediaQuery.of(context).size.shortestSide;
                mobileLayout = shortestSide < 600; 
                return MediaQuery(
                  child: child,
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                );         
              },
            ),
          ),
        );
      }, onError: (error, stackTrace) async {          
        await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
      });   
    });    
  }                     
}
