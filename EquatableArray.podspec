Pod::Spec.new do |s|
  s.name             = "EquatableArray"
  s.version          = "1.0.0"
  s.summary          = "A Swift array wrapper that is Equatable"
  s.description      = <<-DESC
                        A wrapper arround swift array that is Equatable.
                       DESC

  s.homepage         = "https://github.com/mikaoj/EquatableArray"
  s.license          = 'MIT'
  s.author           = { "Joakim Gyllstrom" => "joakim@backslashed.se" }
  s.source           = { :git => "https://github.com/mikaoj/EquatableArray.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
