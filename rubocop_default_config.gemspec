Gem::Specification.new do |s|
  s.name        = 'rubocop_default_config'
  s.version     = '0.1.5'
  s.date        = '2017-10-31'
  s.summary     = 'RuboCop config generator'
  s.description = 'A simple gem to generate default config for RuboCop'
  s.authors     = ['Thai Huynh']
  s.email       = 'qthai.huynh@gmail.com'
  s.files       = ['lib/rubocop_config.rb', 'lib/.rubocop_popular_config.yml', 'lib/.rubocop_default_config.yml', 'README.md']
  # s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.executables = ['rubocop_config', 'rubocop_gen_common']
  s.homepage    = 'http://rubygems.org/gems/rubocop_default_config'
  s.license     = 'MIT'
  s.add_development_dependency 'bundler', '~> 0'
  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'rubocop', '~> 0.49'
end