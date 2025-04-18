Pod::Spec.new do |spec|
  spec.name                = 'PhunwareCorePlugin'
  spec.version             = '1.1.0'
  spec.summary             = 'A Phunware library that provides Core Module plugin interfaces.'
  spec.homepage            = 'https://www.phunware.com'
  spec.license             = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware, Inc. All rights reserved.' }
  spec.author              = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url    = 'https://twitter.com/Phunware'
  spec.platform            = :ios, '15.5'
  spec.source              = { :git => 'git@bitbucket.org:phunware/module-core-ios.git', :tag => 'plugin-' + spec.version.to_s }
  spec.vendored_frameworks = 'Frameworks/PhunwareCorePlugin.xcframework'
  spec.framework           = 'UIKit'
  spec.cocoapods_version = '>= 1.15.2'

  spec.dependency 'PhunwareFoundation', '~> 1.1.0'
end
