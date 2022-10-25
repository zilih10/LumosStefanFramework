# Uncomment the next line to define a global platform for your project
platform :ios, '12.1'

target 'LumosStefanFramework' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for LumosStefanFramework
  pod 'Amplitude', '~> 8.8.0'
  pod 'Adjust', '~> 4.31.0'



post_install do |installer_representation|
   installer_representation.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
         config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'AMPLITUDE_SSL_PINNING=1']
      end
   end
end
