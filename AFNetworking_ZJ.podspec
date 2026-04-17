Pod::Spec.new do |s|
  s.name = 'AFNetworking_ZJ'
  s.version = '4.0.1'

  # ===== 基础信息（必须）=====
  s.summary = 'Custom fork of AFNetworking (ZJ version)'
  s.description = 'A customized AFNetworking fork based on AFNetworking 4.x'
  s.homepage = 'https://github.com/dale454071867/AFNetworking_ZJ'

  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.authors = {
    'ZJ' => 'your@email.com'
  }

  # ===== source（建议用 tag 或 branch）=====
  s.source = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :branch => 'master'
  }

  # ===== 基础配置 =====
  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  # ===== 主文件（避免漏文件）=====
  s.source_files = [
    'AFNetworking/**/*.{h,m}',
    'UIKit+AFNetworking/**/*.{h,m}'
  ]

  # =========================================================
  # Subspec：必须全部“裸引用”，不能带 AFNetworking_ZJ/
  # =========================================================

  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
  end

  s.subspec 'Reachability' do |ss|
    ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'Serialization'
    ss.dependency 'Security'
    ss.dependency 'Reachability'

    ss.source_files = [
      'AFNetworking/AF{URL,HTTP}SessionManager.{h,m}',
      'AFNetworking/AFCompatibilityMacros.h'
    ]
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'NSURLSession'
    ss.source_files = 'UIKit+AFNetworking/**/*.{h,m}'
  end

  # ===== Xcode 26 / module 兼容 =====
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
end