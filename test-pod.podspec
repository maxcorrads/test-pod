#
# Be sure to run `pod lib lint test-pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'test-pod'
  s.version          = '0.1.0'
  s.summary          = 'A short description of test-pod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/maxcorrads/test-pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'maxcorrads' => 'matteo@app24h.it' }
  s.source = { :http => 'https://catapush-sdk-ios.s3.amazonaws.com/catapush-sdk-ios/test.zip' }

  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*','CatapushKit/Catapush.h'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(SRCROOT)/Pods/**", 'OTHER_LDFLAGS' => '-ObjC -lxml2' }
  s.frameworks = 'Security', 'CFNetwork','SystemConfiguration','CoreData'
  s.libraries = 'resolv'
  s.resource = 'CatapushKit/CatapushLibBundle.bundle'
  s.preserve_paths = 'CatapushKit/**/*.*'
  s.vendored_libraries = 'CatapushKit/libCatapushLib.a'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
