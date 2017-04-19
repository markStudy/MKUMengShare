//
//  MKUMengShareManager.h
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UMSocialCore/UMSocialCore.h>
#import "MKUMengShareModel.h"
#import "MKUMengShareKeyModel.h"

@interface MKUMengShareManager : NSObject

+ (void)confitUShareSettings:(MKUMengShareKeyModel *)model;

+ (void)showUMShareView:(MKUMengShareModel *)model;

@end
