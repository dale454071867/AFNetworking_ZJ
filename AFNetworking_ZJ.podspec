Pod::Spec.new do |s|
  s.name = 'AFNetworking_ZJ'
  s.version = '4.0.1'

  s.source = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :branch => 'master'
  }

  s.requires_arc = true

  # Core
  s.source_files = 'AFNetworking/**/*.{h,m}', 'UIKit+AFNetworking/**/*.{h,m}'

  # Serialization
  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  end

  # Security
  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
  end

  # Reachability
  s.subspec 'Reachability' do |ss|
    ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
  end

  # NSURLSession
  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'Serialization'
    ss.dependency 'Security'
    ss.dependency 'Reachability'

    ss.source_files = 'AFNetworking/AF{URL,HTTP}SessionManager.{h,m}',
                      'AFNetworking/AFCompatibilityMacros.h'
  end

  # UIKit
  s.subspec 'UIKit' do |ss|
    ss.dependency 'NSURLSession'
    ss.source_files = 'UIKit+AFNetworking/**/*.{h,m}'
  end
end