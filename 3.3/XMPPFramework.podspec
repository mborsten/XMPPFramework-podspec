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
  s.source_files  = '{Categories, Core, Extensions/**/*, Utilities, Vendor/**/*}/*.{h,m}'
  s.clean_paths   = 'Xcode, Vendor/libidn/libidn-1.15.tar.gz'
  s.frameworks  = 'CFNetwork', 'SystemConfiguration'
  s.library      = 'xml2'
  s.requires_arc = true
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'
end
