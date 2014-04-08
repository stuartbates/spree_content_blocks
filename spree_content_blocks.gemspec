$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'spree_content_blocks/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'spree_content_blocks'
  s.version     = SpreeContentBlocks::VERSION
  s.authors     = ['Stuart Bates']
  s.email       = ['stuart@builtbyclick.com']
  s.homepage    = 'http://builtbyclick.com'
  s.summary     = ''
  s.description = ''

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 3.2.17'
  s.add_runtime_dependency('spree_core', '~> 2.0.0')
  s.add_development_dependency 'sqlite3'
end