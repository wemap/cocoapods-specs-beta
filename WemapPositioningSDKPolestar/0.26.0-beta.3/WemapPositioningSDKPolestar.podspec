Pod::Spec.new do |spec|
  spec.name                   = 'WemapPositioningSDKPolestar'
  spec.version                = '0.26.0-beta.3'
  spec.summary                = 'The Wemap Polestar Positioning iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'
  spec.static_framework       = true

  spec.dependency             'WemapCoreSDK', "~>#{spec.version}"
  spec.dependency             'NAOSwiftProvider', '~>1.3.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/beta/wemap/sdk/positioning/polestar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"

  spec.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
