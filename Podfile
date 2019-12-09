# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
# ignore all warnings from all pods
inhibit_all_warnings!

target 'ModuleExamples' do
  # Pods for ModuleExamples
  pod 'FTMTableSectionModules'
  # Adding right now to the main target a Coocapod issue is open
  # https://github.com/CocoaPods/CocoaPods/issues/7195
  pod 'FTMTableSectionModules/Tests'
  pod 'CodeInjection'
  pod 'CircleImageView'
  pod 'SDWebImage'

  target 'ModuleExamplesTests' do
    pod 'iOSSnapshotTestCase'
  end

  target 'ModuleExamplesUITests' do
  end

end
