Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "PJNumberPad"
s.summary = "PJNumberPad lets you create your custom number pad."
s.requires_arc = true
s.version = "0.1.0"
s.license = 'MIT'
s.author = { "Prajeet Shrestha" => "prajeet.shrestha@gmail.com" }
s.homepage = "https://github.com/PrajeetShrestha/PJNumberPad"
s.source = { :git => "https://github.com/PrajeetShrestha/PJNumberPad.git", :tag => "#{s.version}"}
s.framework = "UIKit"
s.source_files = "PJNumberPad/**/*.{swift}"
s.resources = "PJNumberPad/**/*.{png,jpeg,jpg,storyboard,xib}"
end
