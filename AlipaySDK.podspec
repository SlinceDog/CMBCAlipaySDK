#
#  Be sure to run `pod spec lint AliPay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "AlipaySDK"
  s.version      = "2.0.0"
  s.summary      = "支付宝 sdk"
  s.description  = <<-DESC
                   A longer description of AliPay in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = "https://b.alipay.com/newIndex.htm"
  s.license      = { :type => "Copyright", :text => "支付宝(中国)网络技术有限公司  版权所有." }
  s.author             = { "AliPay" => "https://www.alipay.com/" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/SlinceDog/CMBCAlipaySDK.git", :tag => s.version.to_s }
  s.vendored_frameworks = 'Frameworks/AlipaySDK.framework'
  s.vendored_libraries  = 'AliPaySDK/libcrypto.a','AliPaySDK/libssl.a'
  s.source_files = 'AliPaySDK/Order.h','AliPaySDK/Order.m','AliPaySDK/Util/*.{h,m}','AliPaySDK/openssl/*.{h}','AliPaySDK/AlipaySDK.framework/Headers/**/*.h'
  s.public_header_files = 'AliPaySDK/AlipaySDK.framework/Headers/**/*.h','AliPaySDK/openssl/*.h'
  s.library      = 'z','c++'
  s.resources = "AlipaySDK.bundle"
  s.requires_arc = true
 # s.libraries = "c++","z"

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(PODS_ROOT)/AlipaySDK",'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/AlipaySDK",'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/AlipaySDK"' }
  s.frameworks = 'SystemConfiguration','CoreTelephony','QuartzCore','CoreText','CoreGraphics','UIKit','Foundation','CFNetwork','CoreMotion'
end
