//
//  MKUMengLoginManager.h
//  MKUMengShareDemo
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UMSocialCore/UMSocialCore.h>

@interface MKUMengLoginManager : NSObject

+ (void)getUserInfoForPlatform:(UMSocialPlatformType)platformType viewController:(UIViewController *)vc  success:(void (^)(UMSocialUserInfoResponse *result))success failure:(void (^)(NSError *error))failure;

@end
