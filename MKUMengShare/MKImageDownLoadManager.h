//
//  MKImageDownLoadManager.h
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/** 依赖SDWebImage */
@interface MKImageDownLoadManager : NSObject

+ (UIImage *)downLoadImage:(NSURL *)imageUrl;

@end
