//
//  MKConst.h
//  MKUMengShare
//
//  Created by Mark_Mac on 2017/4/18.
//  Copyright © 2017年 BD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKConst : NSObject

extern NSString *const UMengAppkey;

extern NSString *const WXAppkey;
extern NSString *const WXAppSecret;

extern NSString *const QQAppkey;

extern NSString *const UMengRedirectURL;


#ifdef DEBUG

    #define isDebug YES

#else

    #define isDebug NO

#endif

@end
