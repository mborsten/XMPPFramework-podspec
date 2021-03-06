Pod::Spec.new do |s|
  s.name     = 'XMPPFramework'
  s.version  = '3.3'
  s.license       = 'Public Domain'
  s.summary       = 'An XMPP Framework in Objective-C for the Mac / iOS development community'
  s.homepage      = 'https://github.com/robbiehanson/XMPPFramework'
  s.author        = {'Robbie Hanson' => 'http://deusty.blogspot.com/'}
  s.source        = { :git => 'git://github.com/robbiehanson/XMPPFramework.git', :tag => '3.3'}
  s.platform = :ios
  s.source_files  = 'Categories/*.{h,m}', 'Core/*.{h,m}', 'Extensions/**/*.{h,m}', 'Utilities/*.{h,m}', 'Vendor/libidn/*.{h,m,a}'
  s.clean_paths   = 'Xcode', 'Vendor/libidn/libidn-1.15.tar.gz', 'Vendor/KissXML', 'Vendor/CocoaLumberjack', 'Vendor/CocoaAsyncSocket'
  s.frameworks  = 'CFNetwork', 'SystemConfiguration', 'CoreData', 'CoreLocation'
  s.library      = 'xml2', 'libidn', 'resolv'
  s.requires_arc = true
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/XMPPFramework/Vendor/libidn"' }
  s.dependency 'CocoaLumberjack'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'KissXML', :podspec => 'https://raw.github.com/mborsten/KissXML-podspec/master/5.5/KissXML.podspec'
end