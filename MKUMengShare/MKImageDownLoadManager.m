//
//  MKImageDownLoadManager.m
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "MKImageDownLoadManager.h"
#import "SDWebImageManager.h"

@implementation MKImageDownLoadManager


+ (UIImage *)downLoadImage:(NSURL *)imageUrl {
    SDWebImageManager *manager = [SDWebImageManager sharedManager];
    [manager diskImageExistsForURL:imageUrl];
    if ([manager diskImageExistsForURL:imageUrl]) {
        
        return [[manager imageCache] imageFromDiskCacheForKey:imageUrl.absoluteString];
    }else{
        NSData *data = [NSData dataWithContentsOfURL:imageUrl];
        return [UIImage imageWithData:data];
    }
}

@end
