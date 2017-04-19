

Pod::Spec.new do |s|



    s.name         = "MKUMengShare"
    s.version      = "0.0.1"
    s.summary      = "快速集成友盟登录和分享"
    s.description  = "方便快速集成友盟登录和分享"

    s.homepage     = "http://EXAMPLE/MKUMengShare"
    s.license      = "MIT"

    s.author       = { "Mark_Mac" => "641546030@qq.com" }

    s.platform     = :ios, "7.0"

    s.source       = { :git => "https://github.com/markStudy/MKUMengShare.git", :tag => s.version }


    s.source_files  = "Classes", "Classes/**/*.{h,m}"
    s.exclude_files = "Classes/Exclude"


    s.dependency 'UMengUShare/UI' # U-Share SDK UI模块（分享面板，建议添加）
    s.dependency 'UMengUShare/Social/WeChat' # 集成微信
    s.dependency 'UMengUShare/Social/QQ'  # 集成QQ
    s.dependency 'SDWebImage', '~> 3.8'



    s.subspec 'MKUMengLogin' do |ss|
    ss.source_files = 'MKUMengShareDemo/MKUMengLogin/*.{h,m}'
    end

    s.subspec 'MKUMengShare' do |ss|
    ss.source_files = 'MKUMengShareDemo/MKUMengShare/*.{h,m}'
    end

end
