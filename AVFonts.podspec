#
# Be sure to run `pod lib lint AVFonts.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AVFonts'
  s.version          = '0.1.0'
s.summary          = 'AVFonts is for doing anything you want to do with fonts throuhout app.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

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

  # s.resource_bundles = {
  #   'AVFonts' => ['AVFonts/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
