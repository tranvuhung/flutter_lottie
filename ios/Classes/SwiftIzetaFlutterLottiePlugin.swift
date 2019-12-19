import Flutter
import UIKit

public class SwiftIzetaFlutterLottiePlugin: NSObject, FlutterPlugin {
  // public static func register(with registrar: FlutterPluginRegistrar) {
  //   let channel = FlutterMethodChannel(name: "izeta_flutter_lottie", binaryMessenger: registrar.messenger())
  //   let instance = SwiftIzetaFlutterLottiePlugin()
  //   registrar.addMethodCallDelegate(instance, channel: channel)
  // }

  // public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  //   result("iOS " + UIDevice.current.systemVersion)
  // }

  public static func register(with registrar: FlutterPluginRegistrar) {
	  let viewFactory = LottieViewFactory(registrarInstance: registrar)
	  registrar.register(viewFactory, withId: "izeta/flutter_lottie")
  }
}
