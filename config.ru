require 'rack/jekyll'
require 'yaml'
require 'octopress-codeblock'
require 'octopress-include-tag'

run Rack::URLMap.new( {
  "/" => Rack::Directory.new("public"), # Serve our static content
  "/" => Rack::Jekyll.new                 # Jekyll app
})
