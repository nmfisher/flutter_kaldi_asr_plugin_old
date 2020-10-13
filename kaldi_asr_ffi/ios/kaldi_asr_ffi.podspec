#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint kaldi_asr_ffi.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'kaldi_asr_ffi'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  #s.vendored_libraries = "**/*.dylib"
  s.vendored_frameworks="flutter_kaldi_framework/flutter_kaldi_framework.framework"
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework flutter_kaldi_framework -F"${PODS_ROOT}/../.symlinks/plugins/kaldi_asr_ffi/ios/flutter_kaldi_framework"'}
end
