//
//  MKUMengShareManager.m
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import "MKUMengShareManager.h"
#import <UShareUI/UShareUI.h>

#import "MKConst.h"
#import "MKImageDownLoadManager.h"

@implementation MKUMengShareManager

/*
 友盟第三方登录分享设置
 */
+ (void)confitUShareSettings {
   
    /* 设置友盟appkey */
    [[UMSocialManager defaultManager] setUmSocialAppkey:UMengAppkey];
    
    /* 打开调试日志 */
    [[UMSocialManager defaultManager] openLog:isDebug];
    
    
    /* 配置微信、QQ */
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:WXAppkey appSecret:WXAppSecret redirectURL:UMengRedirectURL];
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:QQAppkey/*设置QQ平台的appID*/  appSecret:nil redirectURL:UMengRedirectURL];
}


+ (void)showUMShareView:(MKUMengShareModel *)model {
 
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        
        // 根据获取的platformType确定所选平台进行下一步操作
        [self shareWebPageToPlatformType:platformType shareModel:model];
    }];
}


+ (void)shareWebPageToPlatformType:(UMSocialPlatformType)platformType shareModel:(MKUMengShareModel *)model  {
    
    UIImage *image = [UIImage imageNamed:@"btn_link_qq"];
    if (model.imageUrl.length) {
        UIImage *webImage = [MKImageDownLoadManager downLoadImage:[NSURL URLWithString:model.imageUrl]];
        if (webImage) {
            image = webImage;
        }
    }
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    
    //创建网页内容对象
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:model.title descr:model.content thumImage:image];
    //设置网页地址
    shareObject.webpageUrl = model.webpageUrl;
    
    //分享消息对象设置分享内容对象
    messageObject.shareObject = shareObject;
    
    //调用分享接口
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:nil completion:^(id data, NSError *error) {
        if (error) {
            NSLog(@"************Share fail with error %@*********",error);
        }else{
            NSLog(@"response data is %@",data);
        }
    }];
}




@end
