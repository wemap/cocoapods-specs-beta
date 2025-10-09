Pod::Spec.new do |spec|
  spec.name                   = 'WemapMapSDK'
  spec.version                = '0.26.0-beta.4'
  spec.summary                = 'The Wemap Map iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'Foundation', 'UIKit', 'CoreLocation', 'CoreFoundation'

  spec.dependency             'WemapCoreSDK', "~>#{spec.version}"
  spec.dependency             'MapLibre', '~>6.19.1'
  spec.dependency             'Zip', '~> 2.1'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/beta/wemap/sdk/map/ios/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end