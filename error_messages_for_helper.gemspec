# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name    = 'error_messages_for_helper'
  gem.version = '1.0.1'
  gem.date    = Time.now.strftime('%Y-%m-%d')
  
  gem.summary = "Active Record error messages helper for Rails 3.0.x"
  gem.description = "error_messages_for_helper provides a simple helper to show ActiveRecord validation errors (just like old helper error_messages_for for Rails-2.3.x)."
  
  gem.author  = 'Damian Baćkowski'
  gem.email    = 'damianbackowski@gmail.com'
  gem.homepage = 'https://github.com/paki-paki/error_messages_for_helper'
  
  gem.rubyforge_project = nil
  gem.has_rdoc = false
  
  gem.files = Dir['Rakefile', '{bin,lib,rails,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
end
