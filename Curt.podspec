Pod::Spec.new do |s|
  s.name             = 'Curt'
  s.version          = '0.1.0'
  s.summary          = 'Curt'
  s.description      = <<-DESC
  Swift operators to make constraints set up faster to write and easier to read.
                       DESC
  s.homepage         = 'https://gitlab.com/caramba/curt'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caramba' => 'hello@caramba.io' }
  s.source           = { :git => 'https://github.com/carambalabs/Curt.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/carambalabs'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files = 'Curt/**/*'
end
