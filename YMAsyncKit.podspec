Pod::Spec.new do |s|
  s.name             = "YMAsyncKit"
  s.version          = "0.1.0"
  s.summary          = "A short description of YMAsyncKit."
  s.description      = <<-DESC
  DESC

  s.homepage         = "https://github.com/IslandZero/YMAsyncKit"
  s.license          = 'MIT'
  s.author           = { "Ryan Guo" => "ryan@islandzero.net" }
  s.source           = { :git => "https://github.com/IslandZero/YMAsyncKit.git", :tag => "v#{s.version.to_s}" }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'YMAsyncKit' => ['Pod/Assets/*.png']
  }
end
