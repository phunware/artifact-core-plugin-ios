Pod::Spec.new do |spec|
  spec.name                = 'PhunwareCorePlugin'
  spec.version             = '1.1.0'
  spec.summary             = 'A Phunware library that provides Core Module plugin interfaces.'
  spec.homepage            = 'https://www.phunware.com'
  spec.license             = { :type => 'Copyright', :text => 'Copyright 2009-present Phunware, Inc. All rights reserved.' }
  spec.author              = { 'Phunware, Inc.' => 'https://www.phunware.com' }
  spec.social_media_url    = 'https://twitter.com/Phunware'
  spec.platform            = :ios, '15.5'
  spec.source              = { :git => 'https://github.com/phunware/artifact-core-plugin-ios.git', :tag => spec.version.to_s }
  spec.cocoapods_version = '>= 1.15.2'

  spec.default_subspecs = 'Core'

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'PhunwareFoundation', '~> 1.1.0'

    subspec.vendored_frameworks = 'Frameworks/PhunwareCorePlugin.xcframework'
  end


  ## Frameworks linked with static libraries
  spec.subspec 'CoreStaticLinks' do |subspec|
    subspec.dependency 'PhunwareFoundation/CoreStaticLinks', '~> 1.1.0'

    subspec.vendored_frameworks = 'FrameworksStaticLinks/PhunwareCorePlugin.xcframework'
  end

end
