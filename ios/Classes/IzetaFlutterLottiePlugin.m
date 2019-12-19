#import "IzetaFlutterLottiePlugin.h"
#import <izeta_flutter_lottie/izeta_flutter_lottie-Swift.h>

@implementation IzetaFlutterLottiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIzetaFlutterLottiePlugin registerWithRegistrar:registrar];
}
@end
