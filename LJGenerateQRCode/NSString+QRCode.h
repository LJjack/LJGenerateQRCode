//
//  NSString+QRCode.h
//  LJGenerateQRCode
//
//  Created by liujunjie on 15-6-3.
//  Copyright (c) 2015年 rj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIImage.h>
@interface NSString (QRCode)
/**
 * 返回当前字符串对应的二维码图像
 *
 * 二维码的实现是将字符串传递给滤镜，滤镜直接转换生成二维码图片
 */
- (UIImage *)createQRCode;
@end
