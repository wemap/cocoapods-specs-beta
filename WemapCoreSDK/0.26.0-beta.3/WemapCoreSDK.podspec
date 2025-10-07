Pod::Spec.new do |spec|
  spec.name                   = 'WemapCoreSDK'
  spec.version                = '0.26.0-beta.3'
  spec.summary                = 'The Wemap Core iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2025 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'Foundation', 'CoreLocation', 'CoreVideo'

  rx_version                  = '~>6.9.0'
  spec.dependency             'RxSwift', rx_version
  spec.dependency             'RxCocoa', rx_version
  spec.dependency             'RxRelay', rx_version
  
  spec.dependency             'Alamofire', '~>5.10.0'
  spec.dependency             'Turf', '~>4.0.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/beta/wemap/sdk/core/ios/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end