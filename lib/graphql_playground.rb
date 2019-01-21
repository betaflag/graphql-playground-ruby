# frozen_string_literal: true

class GraphQLPlayground
  CDN_URL = '//cdn.jsdelivr.net/npm'

  # Initialize the middleware 
  #
  # @param string cdn_url The CDN url for graphql playground (defaults to the official release)
  # @param string version The version of the graphql playground to use (defaults to latest)
  # @param string endpoint The endpoint of your graphql server
  def initialize(app = nil, cdn_url: CDN_URL, version: '', endpoint: '/')
    @app = app
    @cdn_url = cdn_url
    @version = version
    @endpoint = endpoint
    @index_template = File.read(template('index.html.erb'))
  end

  def template(path)
    File.expand_path("templates/#{path}", __dir__)
  end

  def call(env)
    ['200', {'Content-Type' => 'text/html'}, [ERB.new(@index_template).result(binding)]]
  end
end
