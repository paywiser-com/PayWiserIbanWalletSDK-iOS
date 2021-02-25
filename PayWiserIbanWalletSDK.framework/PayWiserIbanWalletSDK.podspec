Pod::Spec.new do |s|
  s.name             = 'PayWiserIbanWalletSDK'
  s.version          = '1.0.0'
  s.summary          = 'PayWiser IBAN Wallet Integration SDK.'

  s.description      = 'PayWiser IBAN Wallet SDK for iOS is a service that allows third-party apps to easily include user IBAN account information into their iOS apps. This service allows retrieving IBAN account balance and status for a user.'

  s.homepage         = 'https://www.paywiser.com'
  s.license          = { :type => 'Copyright', :text => 'Copyright 2021 Intech d.o.o. All rights reserved.\n' }
  s.author           = { 'tjasajan' => 'tjasa@intech.si' }
  s.source           = { :http => 'https://github.com/paywiser-com/PayWiserIbanWalletSDK-iOS/archive/v1.0.0.tar.gz' }

  s.swift_versions = ['5']
  
  s.ios.deployment_target = '12.0'

  s.frameworks = 'UIKit'

  s.source_files = "PayWiserIbanWalletSDK.framework/Headers/*.h"
  s.public_header_files = "PayWiserIbanWalletSDK.framework/Headers/*.h"
  s.module_map = "PayWiserIbanWalletSDK.framework/Modules/module.modulemap"
  s.vendored_frameworks = "PayWiserIbanWalletSDK.framework"
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
