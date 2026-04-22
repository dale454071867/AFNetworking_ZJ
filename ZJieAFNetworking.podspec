Pod::Spec.new do |s|
  s.name = 'ZJieAFNetworking.podspec'
  s.version = '4.0.1'

  s.summary = 'Custom AFNetworking fork'
  s.homepage = 'https://github.com/dale454071867/AFNetworking_ZJ'
  s.license = { :type => 'MIT' }
  s.authors = { 'ZJ' => '454071867@qq.com' }

  s.source = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :tag => "#{s.version}"
  }

  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  s.source_files = [
    'AFNetworking/**/*.{h,m}',
    'UIKit+AFNetworking/**/*.{h,m}'
  ]

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end