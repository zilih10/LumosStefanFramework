#
#  Be sure to run `pod spec lint MyFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "LumosStefanFramework"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of LumosStefanFramework."
  spec.description  = "A complete description of LumosStefanFramework"

  spec.platform     = :ios, "12.1"

  spec.homepage     = "http://EXAMPLE/LumosStefanFramework"
  spec.license      = "MIT"
  spec.author             = { "Stefan Petkovic" => "stefan_zili@hotmail.com" }
  spec.source       = { :git => "https://github.com/zilih10/LumosStefanFramework.git", :branch => "main" }
  spec.source_files  = "LumosStefanFramework"
  spec.exclude_files = "Classes/Exclude"
  spec.swift_version = "4.2" 

end

