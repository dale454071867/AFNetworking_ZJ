Pod::Spec.new do |s|
  s.name = 'AFNetworking_ZJ'
  s.version = '4.0.1'

  s.summary = 'Custom AFNetworking fork'
  s.homepage = 'https://github.com/dale454071867/AFNetworking_ZJ'
  s.license = { :type => 'MIT' }
  s.authors = { 'ZJ' => 'your@email.com' }

  s.source = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :branch => 'master'
  }

  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  # ❗ 直接全部源码，不用 subspec
  s.source_files = [
    'AFNetworking/**/*.{h,m}',
    'UIKit+AFNetworking/**/*.{h,m}'
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end