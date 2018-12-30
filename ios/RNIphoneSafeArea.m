
#import "RNIphoneSafeArea.h"
#import <UIKit/UIKit.h>

@implementation RNIphoneSafeArea

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(hasNotch:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    resolve(@(safeAreaInsets.top > 0));
}

RCT_EXPORT_METHOD(top:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    resolve(@(safeAreaInsets.top));
}

RCT_EXPORT_METHOD(bottom:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    resolve(@(safeAreaInsets.bottom));
}
@end
  
