# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_authors'
  s.version     = '1.0.0'
  s.summary     = 'Add author pages to your spree store. Useful for books, cds, dvds, and other publishable products'
  # s.description = 'TODO: Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Michael Bianco'
  s.email     = 'mike@cliffsidemedia.com'
  s.homepage  = 'https://github.com/iloveitaly/spree_authors'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.1'
  s.add_dependency 'spree_videos'
  s.add_dependency 'rdiscount', '~> 2.1.6'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
