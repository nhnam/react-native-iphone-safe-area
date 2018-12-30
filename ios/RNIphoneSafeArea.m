
#import "RNIphoneSafeArea.h"
#import <UIKit/UIKit.h>
@implementation RNIphoneSafeArea

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (BOOL) hasNotch {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    return safeAreaInsets.top > 0;
}

- (CGFloat) top {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    return safeAreaInsets.top;
}

- (CGFloat) bottom {
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIEdgeInsets safeAreaInsets;
    if (@available(iOS 11, *)) {
        safeAreaInsets = root.view.safeAreaInsets;
    } else {
        safeAreaInsets = UIEdgeInsetsZero;
    }
    return safeAreaInsets.bottom;
}
@end
  
