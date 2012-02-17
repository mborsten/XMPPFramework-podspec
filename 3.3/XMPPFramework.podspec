#
# Be sure to run `pod spec lint XMPPFramework.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec.
#
Pod::Spec.new do |s|
  s.name     = 'XMPPFramework'
  s.version  = '3.3'
  s.license       = 'Public Domain'
  s.summary       = 'An XMPP Framework in Objective-C for the Mac / iOS development community'
  s.homepage      = 'https://github.com/robbiehanson/XMPPFramework'
  s.author        = {'Robbie Hanson' => 'http://deusty.blogspot.com/'}
  s.source        = { :git => 'git://github.com/robbiehanson/XMPPFramework.git', :tag => '3.3'}
  s.platform = :ios
  s.source_files  = '{Categories, Core, Extensions/**/*, Utilities, Vendor/libidn/*}/*.{h,m}'
  s.clean_paths   = 'Xcode', 'Vendor/libidn/libidn-1.15.tar.gz', 'Vendor/KissXML'
  s.frameworks  = 'CFNetwork', 'SystemConfiguration'
  s.library      = 'xml2'
  s.requires_arc = true
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  
  s.subspec 'KissXML' do |kiss|
    kiss.homepage = 'https://github.com/robbiehanson/KissXML'
    kiss.summary = 'KissXML provides a drop-in replacement for Apples NSXML class culster in environments without NSXML (e.g. iOS).'
    s.source        = { :git => 'https://github.com/robbiehanson/KissXML.git', :tag => '5.0'}
    kiss.source_files = '{KissXML, KissXML/**/*}/*.{h,m}'
    kiss.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    kiss.library      = 'xml2'
  end
  
  s.dependency 'CocoaLumberjack'
  s.dependency 'CocoaAsyncSocket'
  

  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'
end
