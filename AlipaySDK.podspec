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
  s.source       = { :git => "https://github.com/SlinceDog/CMBCAlipaySDK.git", :tag => s.version.to_s }
  s.vendored_frameworks = 'AlipaySDK.framework'
  s.vendored_libraries = 'AliPay-Extend/libcrypto.a', 'AliPay-Extend/libssl.a'
  s.public_header_files = "AlipaySDK.framework/Headers/**/*.h", "openssl/*.h"
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion', 'CFNetwork','QuartzCore','CoreText', 'CoreGraphics','UIKit', 'Foundation'
  s.requires_arc = true
  s.libraries    = 'z', 'c++'
  s.resources = "AlipaySDK.bundle"


   s.subspec "AliPay-Extend" do |ae|
    ae.source_files = "AliPay-Extend"
    ae.subspec "Util" do |u|
      u.source_files = "AliPay-Extend/Util"
    end
  end

  s.subspec "openssl" do |ssl|
    ssl.source_files = "openssl"
    ssl.header_dir = "openssl"
  end

end
