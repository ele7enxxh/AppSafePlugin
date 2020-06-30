#
#  Be sure to run `pod spec lint TencentOpenSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "AppSafePlugin"
  s.version      = "3.6.1"
  s.summary      = "version 3.6.1"

  s.homepage     = "http://bastion.tongdun.cn/fp/document.htm"

  s.license      = "MIT"
 
  s.author       = { 'Tongdun' => 'http://bastion.tongdun.cn/fp/document.htm' }
 
  s.platform     = :ios

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/lyeah-ios/AppSafePlugin.git", :tag => "#{s.version}" }

  s.requires_arc = true

  s.ios.vendored_frameworks = 'Frameworks/FMDeviceManagerFramework.framework'

  s.library   = "resolv"

end
