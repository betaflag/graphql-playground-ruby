require 'graphql_playground'
require 'graphql_server'

type_def = <<-GRAPHQL
  type Query {
    hello: String
  }
GRAPHQL

resolver = {
  "Query" => { 
    "hello" => Proc.new { "world" }
  }
}

map '/playground' do
  use GraphQLPlayground, endpoint: '/'
end

run GraphQLServer.new(type_def: type_def, resolver: resolver)
