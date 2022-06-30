Pod::Spec.new do |s|
  s.name = 'OrkaPreviewData'
  s.version = '1.0.0'
  s.authors = 'Joey Barbier'
  s.summary = 'A very simple Pod to convert a data demo (json) to an array of objects'
  s.homepage = 'https://github.com/joey-barbier/ios-previewData'
  s.license = 'BSD 3'
  
  s.platform = :ios
  s.ios.deployment_target = '13.0'
  
  s.source = { :git => 'https://github.com/joey-barbier/ios-previewData.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  
  s.requires_arc = true
  s.frameworks = 'Foundation'
  
  s.source_files = 'Sources/**/*.swift'
end
