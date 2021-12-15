//
//  GXDevice.m
//  GXUtils
//
//  Created by wolffy on 2021/12/8.
//

#import "GXDevice.h"

@implementation GXDevice

#pragma mark - 判断设备类型

/// 判断是否刘海屏手机
+ (BOOL)isPhoneX{
    BOOL result = NO;
    if([UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPhone){
        return result;
    }
    if([GXDevice isHaveSafeArea] == YES){
        result = YES;
    }
    return result;
}

/// 判断是否有安全区，以此来判断是否刘海屏设备
+ (BOOL)isHaveSafeArea{
    BOOL result = NO;
    UIWindow * window = [UIApplication sharedApplication].delegate.window;
    if (@available(iOS 11.0, *)) {
        if(window.safeAreaInsets.bottom > 0.0){
            result = YES;
        }
    } else {
        // Fallback on earlier versions
    }
    return result;
}

@end
