package com.example.izeta_flutter_lottie;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** IzetaFlutterLottiePlugin */
public class IzetaFlutterLottiePlugin { //implements MethodCallHandler
  /** Plugin registration. */
  // public static void registerWith(Registrar registrar) {
  //   final MethodChannel channel = new MethodChannel(registrar.messenger(), "izeta_flutter_lottie");
  //   channel.setMethodCallHandler(new IzetaFlutterLottiePlugin());
  // }

  // @Override
  // public void onMethodCall(MethodCall call, Result result) {
  //   if (call.method.equals("getPlatformVersion")) {
  //     result.success("Android " + android.os.Build.VERSION.RELEASE);
  //   } else {
  //     result.notImplemented();
  //   }
  // }
  public static void registerWith(Registrar registrar) {
    registrar.platformViewRegistry().registerViewFactory(
      "izeta/flutter_lottie",
      new LottieViewFactory(registrar)
    );
    }
}
