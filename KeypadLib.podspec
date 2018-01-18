Pod::Spec.new do |s|
  s.name     = 'KeypadLib'
  s.version  = '1.0'
  s.summary  = 'Security keypad library'
  s.homepage = 'http://www.minwise.co.kr'
  s.requires_arc = true
  s.authors  = {'Minsung Kang' => 'minsung.kang@minwise.co.kr' }
  s.license  = {
    :type => 'Copyright',
    :text => 'Copyright to Minwise 2018. All right reserved.'
  }
  
  s.platform = :ios, "9.0"
  s.module_name = "KeypadLib"

  puts "version: #{s.version}"
  s.preserve_paths = 'Framework/*.framework'
  s.source = { :git => "https://github.com/minsung/KeypadLib.git" }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.vendored_frameworks = "Framework/KeypadLib.framework"
#    core.resource = "SDK/Frameworks/ValuePotion.framework/ValuePotion.bundle"
    core.frameworks = 'UIKit', 'Foundation'
  end
end
