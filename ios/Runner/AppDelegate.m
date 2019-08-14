#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  FlutterMethodChannel* channel = [FlutterMethodChannel methodChannelWithName:@"samples.chenhang/navigation" binaryMessenger:(FlutterViewController *)self.window.rootViewController];
      [channel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
          if ([@"openAppStore" isEqualToString:call.method]) {
              NSString* iTunesLink;
              if([[[UIDevice currentDevice] systemVersion] floatValue] >= 11) {
                  iTunesLink = @"itms-apps://itunes.apple.com/xy/app/foo/id414478124";
              } else {
                  iTunesLink = @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=414478124";
              }

              [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
              result(@0);

          } else {
              result(FlutterMethodNotImplemented);
          }

      }];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
