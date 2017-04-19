

Pod::Spec.new do |s|



    s.name         = "MKUMengShare"
    s.version      = "0.0.2"
    s.summary      = "快速集成友盟登录和分享"
    s.description  = "方便快速集成友盟登录和分享"

    s.homepage     = "http://EXAMPLE/MKUMengShare"
    s.license      = "MIT"

    s.author       = { "Mark_Mac" => "641546030@qq.com" }

    s.platform     = :ios, "7.0"

    s.source       = { :git => "https://github.com/markStudy/MKUMengShare.git", :tag => s.version }
    s.requires_arc = true


    s.dependency 'UMengUShare/UI' # U-Share SDK UI模块（分享面板，建议添加）
    s.dependency 'UMengUShare/Social/WeChat' # 集成微信
    s.dependency 'UMengUShare/Social/QQ'  # 集成QQ
    s.dependency 'SDWebImage', '~> 3.8'


    s.subspec 'MKUMengLoginManager' do |ss|
    ss.source_files = 'MKUMengShare/MKUMengLoginManager/*.{h,m}'
    end

    s.subspec 'MKUMengShareManager' do |ss|
    ss.source_files = 'MKUMengShare/MKUMengShareManager/*.{h,m}'
    end

end
