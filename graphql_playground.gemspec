Gem::Specification.new do |s|
  s.name        = 'graphql_playground'
  s.version     = '0.0.1'
  s.date        = '2019-01-21'
  s.summary     = "A rack middleware wrapper for GraphQL Playground"
  s.description = "A rack middleware wrapper for GraphQL Playground"
  s.authors     = ["betaflag"]
  s.email       = 'hello@betaflag.com'
  s.files       = ["README.md", "lib/graphql_playground.rb", "lib/templates/index.html.erb"]
  s.homepage    = 'https://github.com/betaflag/graphql-playground-ruby'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.2.0"
end
