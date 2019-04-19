# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'linger-ios' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for linger-ios

  # Your 'node_modules' directory is probably in the root of your project,
  # but if not, adjust the `:path` accordingly
  pod 'React', :path => 'react-native-specs', :subspecs => [
    'Core',
    'CxxBridge', # Include this for RN >= 0.47
    'DevSupport', # Include this to enable In-App Devmenu if RN >= 0.43
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket', # needed for debugging
    # Add any other subspecs you want to use in your project
    'RCTImage'
  ]
  # Explicitly include Yoga if you are using RN >= 0.42.0
  pod "yoga", :path => "react-native-specs/yoga"

  # Third party deps podspec link
  pod 'DoubleConversion', :podspec => 'react-native-specs/third-party-podspecs/DoubleConversion.podspec'
  pod 'glog', :podspec => 'react-native-specs/third-party-podspecs/glog.podspec'
  pod 'Folly', :podspec => 'react-native-specs/third-party-podspecs/Folly.podspec'

  pod 'CodePush', :path => 'react-native-specs/codepush'

end
