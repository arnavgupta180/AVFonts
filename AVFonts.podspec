Pod::Spec.new do |s|
  s.name             = 'AVFonts'
  s.version          = '0.1.0'
  s.summary          = 'AVFonts is for doing anything you want to do with fonts throuhout app.'
  s.description      = <<-DESC
                        AVFonts is for swaping the font you are using with the new font throughout the app.You can increment or decrement your fontsize as per your reqiurements otherwise it will take the fontsize you are using for your old font
                        DESC

  s.homepage         = 'https://github.com/codegeeker180/AVFonts'
  s.version          = '0.1.0'
  s.name             = 'AVFonts'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arnav' => 'arnavgupta180@gmail.com' }
  s.source           = { :git => 'https://github.com/codegeeker180/AVFonts.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files  = 'Classes/*.{swift}'

end
