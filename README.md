# MKUMengShare
利用友盟实现第三方登录和分享

### 写在前面 
基本上每个项目都会集成第三方登录和分享，因为笔者基本上都用的友盟，所以花了一点把登录和分享总结了2个类出来，方便以后快速集成，也为初次集成登录和分享的朋友提供个参考，使用这两个类，你只需要简单几步配置就可以完成登录和分享，非常简单。github地址：[MKUMengShare](https://github.com/markStudy/MKUMengShare.git)，简书地址：[两个工具类，帮你快速集成友盟分享和登录](http://www.jianshu.com/p/8a57192da395)

### 集成与配置
1. 使用前请先自行申请好各种KEY（友盟、微信、qq）

2. 将MKUMengShare库使用cocoapods导入到项目中
```
pod 'MKUMengShare'
```

3. 配置URL Schemes

![配置URL Schemes.png](http://upload-images.jianshu.io/upload_images/2107957-0d6041e8acc39ddb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/540)

4.配置SSO白名单

![配置SSO白名单.png](http://upload-images.jianshu.io/upload_images/2107957-4a120a01b90d5831.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/540)

到此，恭喜你，你已经完成了项目的基本配置了。
注意：iOS9引入了新特性App Transport Security (ATS)。
新特性要求App内访问的网络必须使用HTTPS协议。如果项目使用的是HTTP协议，请按如下配置

![App Transport Security (ATS).png.jpeg](http://upload-images.jianshu.io/upload_images/2107957-3e298b0a9bb4db10.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/540)

### 开始使用

1.配置好所需的key

```
static NSString *const UMengAppkey = @"5861e5daf5ade41326001eab";
static NSString *const WXAppkey = @"wx102ed6c47738d38a";
static NSString *const WXAppSecret = @"a3a4f41b7fea03f6b39f3f5ff99e41d4";
static NSString *const QQAppkey = @"1105405763";
static NSString *const UMengRedirectURL = @"http://mobile.umeng.com/social";
```

2.在AppDelegate中注册

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

MKUMengShareKeyModel *model = [MKUMengShareKeyModel modelWithUMengKey:UMengAppkey wxAppkey:WXAppkey wxAppSecret:WXAppSecret qqAppkey:QQAppkey umengRedirectURL:UMengRedirectURL];
[MKUMengShareManager confitUShareSettings:model];

return YES;
}
```

3.设置OpenURL回调

```

//#define __IPHONE_10_0    100000
#if __IPHONE_OS_VERSION_MAX_ALLOWED > 100000
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
{
//6.3的新的API调用，是为了兼容国外平台(例如:新版facebookSDK,VK等)的调用[如果用6.2的api调用会没有回调],对国内平台没有影响。
BOOL result = [[UMSocialManager defaultManager]  handleOpenURL:url options:options];
if (!result) {
// 其他如支付等SDK的回调
}
return result;
}

#endif

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
//6.3的新的API调用，是为了兼容国外平台(例如:新版facebookSDK,VK等)的调用[如果用6.2的api调用会没有回调],对国内平台没有影响
BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
if (!result) {
// 其他如支付等SDK的回调
}
return result;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url];
if (!result) {
// 其他如支付等SDK的回调
}
return result;
}
```

4.分享

```
MKUMengShareModel *model = [MKUMengShareModel modelWithTitle:@"测试一下" content:@"我是打酱油的内容" imageUrl:nil webpageUrl:@"www.baidu.com"];
[MKUMengShareManager showUMShareView:model];
```

5.登录

```
[MKUMengLoginManager getUserInfoForPlatform:UMSocialPlatformType_WechatSession viewController:self success:^(UMSocialUserInfoResponse *result) {

// 获取三方信息后，做自己的登录
[self gotoLogin];

} failure:^(NSError *error) {

}];
```

就这样两个步骤，就完成了整个分享和登录的流程，而且代码也比较简洁。
