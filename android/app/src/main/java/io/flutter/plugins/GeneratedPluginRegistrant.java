package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.deviceinfo.DeviceInfoPlugin;
import io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin;
import com.kiwi.fluttercrashlytics.FlutterCrashlyticsPlugin;
import com.dooboolab.flutterinapppurchase.FlutterInappPurchasePlugin;
import io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import flutter.plugins.screen.screen.ScreenPlugin;
import io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin;
import com.tekartik.sqflite.SqflitePlugin;
import de.jonasbark.stripepayment.StripePaymentPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    DeviceInfoPlugin.registerWith(registry.registrarFor("io.flutter.plugins.deviceinfo.DeviceInfoPlugin"));
    FirebaseMessagingPlugin.registerWith(registry.registrarFor("io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin"));
    FlutterCrashlyticsPlugin.registerWith(registry.registrarFor("com.kiwi.fluttercrashlytics.FlutterCrashlyticsPlugin"));
    FlutterInappPurchasePlugin.registerWith(registry.registrarFor("com.dooboolab.flutterinapppurchase.FlutterInappPurchasePlugin"));
    FluttertoastPlugin.registerWith(registry.registrarFor("io.github.ponnamkarthik.toast.fluttertoast.FluttertoastPlugin"));
    PathProviderPlugin.registerWith(registry.registrarFor("io.flutter.plugins.pathprovider.PathProviderPlugin"));
    ScreenPlugin.registerWith(registry.registrarFor("flutter.plugins.screen.screen.ScreenPlugin"));
    SharedPreferencesPlugin.registerWith(registry.registrarFor("io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"));
    SqflitePlugin.registerWith(registry.registrarFor("com.tekartik.sqflite.SqflitePlugin"));
    StripePaymentPlugin.registerWith(registry.registrarFor("de.jonasbark.stripepayment.StripePaymentPlugin"));
    UrlLauncherPlugin.registerWith(registry.registrarFor("io.flutter.plugins.urllauncher.UrlLauncherPlugin"));
    VideoPlayerPlugin.registerWith(registry.registrarFor("io.flutter.plugins.videoplayer.VideoPlayerPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
