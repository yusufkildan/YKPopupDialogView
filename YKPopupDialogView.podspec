
Pod::Spec.new do |s|
  s.name             = 'YKPopupDialogView'
  s.version          = '0.1.0'
  s.summary          = 'Simple and customizable popup dialog view with custom animations.'

  s.description      = <<-DESC
    Easy to use and customizable, there are various animation to show / hide popup dialog view. This library written with swift 3.
                       DESC

  s.homepage         = 'https://github.com/yusufkildan/YKPopupDialogView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yusufkildan' => 'kildanyusuf@gmail.com' }
  s.source           = { :git => 'https://github.com/yusufkildan/YKPopupDialogView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yusuf_kildan'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YKPopupDialogView/Classes/**/*'

  s.frameworks = 'UIKit'
end
