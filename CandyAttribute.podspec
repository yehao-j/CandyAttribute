Pod::Spec.new do |s|

    s.name         = 'CandyAttribute'
    s.version      = '0.0.5'
    s.summary      = '富文本字典'
    s.homepage     = 'https://github.com/J-yezi/CandyAttribute'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { "J-yezi" => 'yehao1020@gmail.com' }
    s.source       = { :git => 'https://github.com/J-yezi/CandyAttribute.git', :tag => s.version }

    s.ios.deployment_target = '8.0'

    s.frameworks = 'Foundation'
    s.source_files = 'Sources/*.swift'
    s.dependency 'SwiftyAttributes', '4.1.0'

end
