//
//  ViewController.m
//  LJGenerateQRCode
//
//  Created by liujunjie on 15-6-2.
//  Copyright (c) 2015年 rj. All rights reserved.
//

#import "ViewController.h"
#import "NSString+QRCode.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *QRCodeImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = @"欢迎使用LJ的生成二维码工程";
    self.QRCodeImageView.image = [string createQRCode];
    //把二维码保存到沙盒路径
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    UIGraphicsBeginImageContext(self.QRCodeImageView.bounds.size);
    [self.QRCodeImageView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *data = UIImagePNGRepresentation(image);
    
    [data writeToFile:[path stringByAppendingPathComponent:@"QRCode.png"] atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
