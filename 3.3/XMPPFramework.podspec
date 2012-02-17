Pod::Spec.new do |s|
  s.name          = 'XMPPFramework'
  s.version       = '3.3'
  s.license       = 'Public Domain'
  s.summary       = 'An XMPP Framework in Objective-C for the Mac / iOS development community'
  s.homepage      = 'https://github.com/robbiehanson/XMPPFramework'
  s.author        = {'Robbie Hanson' => 'http://deusty.blogspot.com/'}
  s.platform      = :ios
  s.source        = { :git => 'git://github.com/robbiehanson/XMPPFramework.git', :tag => '3.3'}
  s.clean_paths   = 'Xcode, Vendor/libidn/libidn-1.15.tar.gz'
  s.source_files  = '{Categories, Core, Extensions/**, Utilities, Vendor/**}/*.{h,m}'
  s.requires_arc = true
  s.library      = 'xml2'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.frameworks  = 'CFNetwork, SystemConfiguration'
end