require 'rack/jekyll'
require 'yaml'
require 'octopress-codeblock'
require 'octopress-include-tag'

# The jekyll root directory
root = ::File.dirname(__FILE__)
run Rack::URLMap.new( {
  "/" => Rack::Directory.new("public"), # Serve our static content
  "/" => Rack::Jekyll.new                 # Jekyll app
})
