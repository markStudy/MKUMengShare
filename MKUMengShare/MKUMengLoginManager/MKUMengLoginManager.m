//
//  MKUMengLoginManager.m
//  MKUMengShareDemo
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "MKUMengLoginManager.h"

@implementation MKUMengLoginManager

+ (void)getUserInfoForPlatform:(UMSocialPlatformType)platformType viewController:(UIViewController *)vc  success:(void (^)(UMSocialUserInfoResponse *result))success failure:(void (^)(NSError *error))failure {
    
    [[UMSocialManager defaultManager] getUserInfoWithPlatform:platformType currentViewController:vc completion:^(id result, NSError *error) {
        
        UMSocialUserInfoResponse *resp = result;
        
        // 第三方登录数据(为空表示平台未提供)
        // 授权数据
        NSLog(@" uid: %@", resp.uid);
        NSLog(@" openid: %@", resp.openid);
        NSLog(@" accessToken: %@", resp.accessToken);
        NSLog(@" refreshToken: %@", resp.refreshToken);
        NSLog(@" expiration: %@", resp.expiration);
        
        // 用户数据
        NSLog(@" name: %@", resp.name);
        NSLog(@" iconurl: %@", resp.iconurl);
        NSLog(@" gender: %@", resp.gender);
        
        // 第三方平台SDK原始数据
        NSLog(@" originalResponse: %@", resp.originalResponse);
#warning 这里
        if (error) {
            NSLog(@"获取第三方信息失败=%@",error);
            if (failure) {
                failure(error);
            }
            return ;
        }
        
        if (success) {
            success(result);
        }
    }];
}




@end
