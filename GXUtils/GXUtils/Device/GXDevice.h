//
//  GXDevice.h
//  GXUtils
//
//  Created by wolffy on 2021/12/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GXDevice : NSObject

#pragma mark - 判断设备类型

/// 判断是否刘海屏手机
+ (BOOL)isPhoneX;

/// 判断是否有安全区，以此来判断是否刘海屏设备
+ (BOOL)isHaveSafeArea;

@end

NS_ASSUME_NONNULL_END
