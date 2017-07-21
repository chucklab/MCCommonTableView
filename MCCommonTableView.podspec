Pod::Spec.new do |s|
  s.name         = "MCCommonTableView"
  s.version      = "0.0.1"
  s.summary      = "A table view for common use."
  s.description  = <<-DESC
  A table view for common use, have fun.
                   DESC
  s.homepage     = "https://github.com/chucklab/MCCommonTableView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "Chuck MA" => "chuck@chucklab.com" }
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source       = { :git => "https://github.com/chucklab/MCCommonTableView.git", :tag => "#{s.version}" }
  s.source_files  = "Classes"
  s.exclude_files = "Classes/Exclude"
  s.public_header_files = "Classes/*.h"
  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true
end
