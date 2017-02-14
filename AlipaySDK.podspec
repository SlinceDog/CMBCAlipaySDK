Pod::Spec.new do |s|
  s.name         = 'AlipaySDK'
  s.version      = '2.2.3'
  s.summary      = 'Alipay SDK 2.2.3 for iOS.'
  s.description  = <<-DESC
                   Alipay SDK 2.2.3 for iOS.
                   DESC
  s.homepage     = 'http://club.alipay.com/read-htm-tid-9976972.html'
  s.license      = { :type => 'Copyright', :text => '支付宝(中国)网络技术有限公司 版权所有.' }
  s.authors            = { 'Alipay' => 'https://www.alipay.com/' }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/MapleJ/AlipaySDK.git", :tag => s.version.to_s }

  s.resource = 'AliPaySDK/AlipaySDK.bundle/*{.png}'
  s.source_files   = "AliPaySDK/Util/*.{h,m}"
  s.vendored_frameworks = 'AliPaySDK/AlipaySDK.framework'
  s.public_header_files = 'AliPaySDK/AlipaySDK.framework/Headers/**/*.h'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion', 'CFNetwork','QuartzCore','CoreText', 'CoreGraphics','UIKit', 'Foundation'
  s.requires_arc = true
  s.libraries    = 'z', 'c++','xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.dependency 'OpenSSL-Universal', '~> 1.0.1.j-2'
end
