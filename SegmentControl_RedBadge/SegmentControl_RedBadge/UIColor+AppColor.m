//
//  UIColor+AppColor.m
//  SegmentControl_RedBadge
//
//  Created by suime on 2017/5/5.
//  Copyright © 2017年 suime. All rights reserved.
//

#import "UIColor+AppColor.h"

@implementation UIColor (AppColor)
+ (UIColor *)sui_colorWithHex:(NSInteger)hex {
    return [self sui_colorWithHex:hex alpha:1];
}
+ (UIColor *)sui_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha {
    NSInteger blue = hex & 0xFF;
    NSInteger green = (hex & 0xFF00) >> 8;
    NSInteger red = (hex & 0xFF0000) >> 16;
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}
@end
