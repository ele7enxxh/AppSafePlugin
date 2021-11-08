#
#  Be sure to run `pod spec lint TencentOpenSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "AppSafePlugin"
  s.version      = "3.7.0"
  s.summary      = "包含 3.7.0-S 稳定版 和 3.7.0-P 最新版"

  s.homepage     = "http://bastion.tongdun.cn/fp/document.htm"

  s.license      = "MIT"
 
  s.author       = { 'Tongdun' => 'http://bastion.tongdun.cn/fp/document.htm' }
 
  s.platform     = :ios

  s.ios.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/lyeah-ios/AppSafePlugin.git", :tag => "#{s.version}" }

  s.requires_arc = true

  s.library   = "resolv"

  s.default_subspec  = 'StablePlugin'
  
  # 包含IDFA的稳定版
  s.subspec 'StablePlugin' do |ss|
    ss.ios.vendored_frameworks = 'Frameworks/Stable/FMDeviceManagerFramework.framework', 'Frameworks/Stable/TongdunCorePlugin.framework'
    
  end
  
  # 不包含IDFA的稳定版
  s.subspec 'StablePluginWithoutIDFA' do |ss|
    ss.ios.vendored_frameworks = 'Frameworks/Stable/FMDeviceManagerFramework_without_IDFA.framework', 'Frameworks/Stable/TongdunCorePlugin.framework'
    
  end

  # 包含IDFA的最新版
  s.subspec 'CurrentPlugin' do |ss|
    ss.ios.vendored_frameworks = 'Frameworks/Current/FMDeviceManagerFramework.framework'
    
  end
  
  # 不包含IDFA的最新版
  s.subspec 'CurrentPlugin' do |ss|
    ss.ios.vendored_frameworks = 'Frameworks/Current/FMDeviceManagerFramework_without_IDFA.framework'
    
  end

end
