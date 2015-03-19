# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "daioikachan"
  gem.description = "Ikachan compatible interface with multiple backends (IRC, Slack, etc)"
  gem.homepage    = "https://github.com/sonots/daioikachan"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Naotoshi Seo"]
  gem.email       = "sonots@gmail.com"
  gem.has_rdoc    = false
  gem.license     = 'MIT License'
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", "~> 0.12.0"
  gem.add_dependency "dotenv"
  # gem.add_dependency "fluent-plugin-daioikachan"
  gem.add_dependency "puma"
  # gem.add_dependency "fluent-plugin-irc"
  gem.add_dependency "irc_parser"
  # gem.add_dependency "fluent-plugin-slack"
  gem.add_development_dependency "rake"
end
