Pod::Spec.new do |spec|
  spec.name                       = 'WemapPositioningSDK'
  spec.version                = '0.26.0-beta.4'
  spec.summary                    = 'The Wemap Positioning iOS SDK'

  spec.homepage                   = 'https://getwemap.com'
  spec.license                    = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                    = 'Wemap SAS'

  spec.ios.deployment_target      = '12.0'
  spec.swift_version              = '5.10'

  spec.frameworks                 = 'CoreLocation'

  spec.dependency                 'WemapCoreSDK', "~>#{spec.version}"

  spec.subspec 'VPSARKit' do |subspec|

    subspec.frameworks            = 'ARKit', 'CoreMotion'

    subspec.dependency              'RxSwift', '~>6.9.0'

    subspec.vendored_frameworks   = 'WemapPositioningSDK/WemapPositioningSDKVPSARKit.xcframework'
  end

  spec.subspec 'GPS' do |subspec|
    subspec.vendored_frameworks   = 'WemapPositioningSDK/WemapPositioningSDKGPS.xcframework'
  end

  spec.source                     = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/beta/wemap/sdk/positioning/ios/#{spec.version}/#{spec.name}.zip" }
end
