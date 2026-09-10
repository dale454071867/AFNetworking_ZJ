Pod::Spec.new do |s|
  s.name     = 'ZJAFNetworking'
  s.version  = '1.0.3'
  s.summary  = 'Custom AFNetworking fork'
  s.homepage = 'https://github.com/dale454071867/AFNetworking_ZJ'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.authors  = { 'ZJ' => '454071867@qq.com' }

  s.source   = {
    :git => 'https://github.com/dale454071867/AFNetworking_ZJ.git',
    :tag => s.version.to_s
  }

  s.requires_arc = true
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'

  s.ios.source_files = 'AFNetworking/**/*.{h,m}', 'UIKit+AFNetworking/**/*.{h,m}'
  s.osx.source_files = 'AFNetworking/**/*.{h,m}'

  s.frameworks = 'Security', 'SystemConfiguration'
  s.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
