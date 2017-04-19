//
//  MKUMengShareModel.m
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "MKUMengShareModel.h"

@implementation MKUMengShareModel


- (instancetype)initWithTitle:(NSString *)title content:(NSString *)content imageUrl:(NSString *)imageUrl webpageUrl:(NSString *)webpageUrl {
    self = [super init];
    if (self) {
        _title = title;
        _content = content;
        _imageUrl = imageUrl;
        _webpageUrl = webpageUrl;
    }
    return self;
}

+ (MKUMengShareModel *)modelWithTitle:(NSString *)title content:(NSString *)content imageUrl:(NSString *)imageUrl webpageUrl:(NSString *)webpageUrl {

    MKUMengShareModel *model = [[self alloc] initWithTitle:title content:content imageUrl:imageUrl webpageUrl:webpageUrl];
    return model;
}




@end
