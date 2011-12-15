Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_ajax_cart'
  s.version     = '1.0.0'
  s.summary     = 'Ajax spree cart'
  s.description = 'A spree extension for an add to cart ajax button.'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = ['Pogodan', 'Roman Simecek (roman@good2go.ch)']
  s.email             = 'info@pogodan.com'
  s.homepage          = 'http://www.pogodan.com'
  s.rubyforge_project = 'spree_ajax_cart'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'public/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 1.0.0.beta')
end
