$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "smithy-auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "smithy-auth"
  s.version     = SmithyAuth::VERSION
  s.authors     = ["Tim Glen"]
  s.email       = ["tim@tag.ca"]
  s.homepage    = "https://github.com/sterrym/smithy-auth"
  s.summary     = "Provides basic authentication to Smithy CMS"
  s.description = "Smithy CMS ships with no authentication. This implements a basic has_secure_password in a Smithy::User model"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency 'bcrypt-ruby', '~> 3.0.0'

  s.add_development_dependency "sqlite3"
end
