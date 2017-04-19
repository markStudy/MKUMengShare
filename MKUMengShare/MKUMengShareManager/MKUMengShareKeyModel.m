//
//  MKUMengShareKeyModel.m
//  MKUMengShareDemo
//
//  Created by Mark_Mac on 2017/4/19.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "MKUMengShareKeyModel.h"

@implementation MKUMengShareKeyModel

- (instancetype)initWithUMengKey:(NSString *)umengKey wxAppkey:(NSString *)wxAppkey wxAppSecret:(NSString *)wxAppSecret qqAppkey:(NSString *)qqAppkey umengRedirectURL:(NSString *)umengRedirectURL {
    self = [super init];
    if (self) {
        _umengKey = umengKey;
        _wxAppkey = wxAppkey;
        _wxAppSecret = wxAppkey;
        _qqAppkey = qqAppkey;
        _umengRedirectURL = umengRedirectURL;
        
    }
    return self;
}

+ (MKUMengShareKeyModel *)modelWithUMengKey:(NSString *)umengKey wxAppkey:(NSString *)wxAppkey wxAppSecret:(NSString *)wxAppSecret qqAppkey:(NSString *)qqAppkey umengRedirectURL:(NSString *)umengRedirectURL {
    
    MKUMengShareKeyModel *model = [[self alloc] initWithUMengKey:umengKey wxAppkey:wxAppkey wxAppSecret:wxAppSecret qqAppkey:qqAppkey umengRedirectURL:umengRedirectURL];
    return model;
}



@end
