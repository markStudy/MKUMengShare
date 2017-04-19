//
//  MKUMengShareKeyModel.h
//  MKUMengShareDemo
//
//  Created by Mark_Mac on 2017/4/19.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKUMengShareKeyModel : NSObject

/** 友盟的key */
@property (nonatomic, copy) NSString *umengKey;

/** 微信的appkey */
@property (nonatomic, copy) NSString *wxAppkey;

/** 微信的AppSecret */
@property (nonatomic, copy) NSString *wxAppSecret;

/** QQ的appkey */
@property (nonatomic, copy) NSString *qqAppkey;

/** 回调地址 */
@property (nonatomic, copy) NSString *umengRedirectURL;

+ (MKUMengShareKeyModel *)modelWithUMengKey:(NSString *)umengKey wxAppkey:(NSString *)wxAppkey wxAppSecret:(NSString *)wxAppSecret qqAppkey:(NSString *)qqAppkey umengRedirectURL:(NSString *)umengRedirectURL;

@end
