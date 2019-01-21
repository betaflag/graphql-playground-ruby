This gem is a simple middleware wrapper for [GraphQL Playground](https://github.com/prisma/graphql-playground), a GraphQL IDE for better development workflows (GraphQL Subscriptions, interactive docs & collaboration).

```
gem install graphql_playground
```

## Usage

If you use rack, you can mount it like this

```ruby
require 'graphql_playground'

map '/playground' do
  use GraphQLPlayground, endpoint: '/graphql' # endpoint to your graphql server endpoint
end
```

## Example using graphql_server gem

```ruby
# app.ru
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
  use GraphQLPlayground
end

run GraphqlServer.new(type_def: type_def, resolver: resolver)
```

Launch it with

```
rackup app.ru
```

And then open http://localhost:9292/playground

(Reference https://github.com/betaflag/graphql-server-ruby)
