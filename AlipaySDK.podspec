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

  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion', 'CFNetwork','QuartzCore','CoreText', 'CoreGraphics','UIKit', 'Foundation'
  s.requires_arc = true
  s.libraries    = 'z', 'c++'

  s.default_subspec   = 'Core'

  s.subspec "Core" do |core|
    core.source_files = 'sources/extensions/ANAlipayResultCode.h'
    core.resources    = 'AlipaySDK.bundle'
    core.vendored_frameworks = 'AlipaySDK.framework'
    core.public_header_files = 'AlipaySDK.framework/Headers/**/*.h', 'sources/extensions/ANAlipayResultCode.h'
  end

  s.subspec "Order" do |order|
    order.source_files = 'sources/order/**/*.{h,m}'
    order.dependency 'AlipaySDK/Core'
    order.dependency 'OpenSSL'
  end

end
