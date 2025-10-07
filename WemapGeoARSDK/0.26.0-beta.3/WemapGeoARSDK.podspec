Pod::Spec.new do |spec|
  spec.name                   = 'WemapGeoARSDK'
  spec.version                = '0.26.0-beta.3'
  spec.summary                = 'The Wemap GeoAR iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '13.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'SceneKit', 'CoreLocation', 'AVFoundation', 'Metal'

  spec.dependency             'WemapCoreSDK', "~>#{spec.version}"

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/beta/wemap/sdk/geoar/ios/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
