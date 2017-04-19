//
//  MKUMengShareModel.h
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKUMengShareModel : NSObject

/** 分享标题 */
@property (nonatomic, copy) NSString *title;

/** 分享内容 */
@property (nonatomic, copy) NSString *content;

/** 分享图片地址 */
@property (nonatomic, copy) NSString *imageUrl;

/** 分享地址 */
@property (nonatomic, copy) NSString *webpageUrl;

+ (MKUMengShareModel *)modelWithTitle:(NSString *)title content:(NSString *)content imageUrl:(NSString *)imageUrl webpageUrl:(NSString *)webpageUrl;

@end
