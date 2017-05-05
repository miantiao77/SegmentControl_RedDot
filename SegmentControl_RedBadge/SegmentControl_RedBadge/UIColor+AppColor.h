//
//  UIColor+AppColor.h
//  SegmentControl_RedBadge
//
//  Created by suime on 2017/5/5.
//  Copyright © 2017年 suime. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (AppColor)
+ (UIColor *)sui_colorWithHex:(NSInteger)hex;
+ (UIColor *)sui_colorWithHex:(NSInteger)hex alpha:(CGFloat)alpha;
@end
