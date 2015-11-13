Gem::Specification.new do |s|
    s.name          = 'cerberator'
    s.version       = '1.0.0'
    s.licenses    = ['MIT']
    s.summary       = 'Cerberator links the Consul K\V store to ERB templates.'
    s.authors       = ['Devin Stiert']
    s.email         = 'cerberator@orbx.net'
    s.homepage      = 'https://github.com/dstiert/cerberator'
    s.files         = Dir['lib/**/*', 'bin/*']
    s.executables << 'cerberator'
    s.add_dependency 'diplomat', '~> 0.15'
    s.add_development_dependency 'ocra'
    s.add_development_dependency 'rake'
end
