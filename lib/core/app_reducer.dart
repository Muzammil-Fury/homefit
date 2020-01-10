import 'package:homefit/core/app_state.dart';
import 'package:homefit/home/home_reducer.dart';
import 'package:homefit/workout/workout_reducer.dart';
import 'package:homefit/user/user_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    homeFitHomeState: homeFitHomeReducer(state.homeFitHomeState, action),
    workoutState: workoutReducer(state.workoutState, action),
    userState: userReducer(state.userState, action),
  );
}
