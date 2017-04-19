//
//  ViewController.m
//  MKUMengShareDemo
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "ViewController.h"
#import "MKUMengShareManager.h"
#import "MKUMengLoginManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareClick:(id)sender {
    
    MKUMengShareModel *model = [MKUMengShareModel modelWithTitle:@"测试一下" content:@"我是打酱油的内容" imageUrl:nil webpageUrl:@"www.baidu.com"];
    [MKUMengShareManager showUMShareView:model];
}


- (IBAction)qqLoginClick:(id)sender {
    
    [MKUMengLoginManager getUserInfoForPlatform:UMSocialPlatformType_QQ viewController:self success:^(UMSocialUserInfoResponse *result) {
        
        [self gotoLogin];
        
    } failure:^(NSError *error) {
        
    }];
}


- (IBAction)wxLoginClick:(id)sender {

    [MKUMengLoginManager getUserInfoForPlatform:UMSocialPlatformType_WechatSession viewController:self success:^(UMSocialUserInfoResponse *result) {
        
        [self gotoLogin];
        
    } failure:^(NSError *error) {
        
    }];
}

// 去登录
- (void)gotoLogin {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"恭喜你登录成功");
    });
    
}



@end
