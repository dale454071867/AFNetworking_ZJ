Pod::Spec.new do |s|
  s.name     = 'AFNetworking_ZJ'
  s.version  = '4.0.1'
  s.license  = 'MIT'
  s.summary  = 'Custom AFNetworking fork (ZJ version)'
  s.homepage = 'https://github.com/dale454071867/AFNetworking_ZJ'
  s.authors  = { 'ZJ' => 'your@email.com' }

  s.source = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :tag => s.version.to_s
  }

  s.requires_arc = true

  # ======================
  # Deployment Targets
  # ======================
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'

  # ======================
  # Core Source
  # ======================
  s.source_files = [
    'AFNetworking/**/*.{h,m}',
    'UIKit+AFNetworking/**/*.{h,m}'
  ]

  # ======================
  # Serialization
  # ======================
  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  end

  # ======================
  # Security
  # ======================
  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
  end

  # ======================
  # Reachability
  # ======================
  s.subspec 'Reachability' do |ss|
    ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
  end

  # ======================
  # NSURLSession
  # ======================
  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'Serialization'
    ss.dependency 'Security'
    ss.dependency 'Reachability'

    ss.source_files = [
      'AFNetworking/AF{URL,HTTP}SessionManager.{h,m}',
      'AFNetworking/AFCompatibilityMacros.h'
    ]
  end

  # ======================
  # UIKit Extensions
  # ======================
  s.subspec 'UIKit' do |ss|
    ss.dependency 'NSURLSession'

    ss.source_files = 'UIKit+AFNetworking/**/*.{h,m}'
  end

  # ======================
  # Module / Xcode 26 Fix
  # ======================
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'PRODUCT_MODULE_NAME' => 'AFNetworkingZJ',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end