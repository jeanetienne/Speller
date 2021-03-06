# Podspec for Speller
Pod::Spec.new do |s|

  s.name             = "Speller"
  s.version          = "0.1.8"
  s.summary          = "Framework to spell words using spelling alphabets"

  s.description      = <<-DESC
                       Speller helps you spell out words using know spelling 
                       alphabets. When you're on the phone trying to spell a 
                       difficult word, or when you want to sound like you're a 
                       pilot.
                       DESC

  s.homepage         = "https://github.com/jeanetienne/Speller"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Jean-Étienne" => "cocoapods@jeanetienne.net" }
  s.social_media_url = "http://twitter.com/jeanetienne"

  s.source        = { 
    :git => "https://github.com/jeanetienne/Speller.git", 
    :tag => "#{s.version}" }
  s.source_files  = "Sources/**/*"
  s.swift_version = "4.2"
  s.frameworks    = "Foundation"

  s.ios.deployment_target       = "10.0"
  s.osx.deployment_target       = "10.12"
  s.watchos.deployment_target   = "3.0"
  s.tvos.deployment_target      = "10.0"

end
