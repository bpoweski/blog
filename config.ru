$stdout.sync = true

use Rack::Static, :urls => Dir.glob("public/blog/[0-9]*/[0-9]*/[0-9]*/*").map { |u| u.gsub(/^public/, '') },
  :root => 'public', :index => 'index.html'
use Rack::Static, :urls => Dir.glob("public/*").map { |u| u.gsub(/^public/, '') },
  :root => 'public'
use Rack::Static, :urls => ["/images", "/javascripts", "/stylesheets", "/assets"], :root => 'public'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html'
      # 'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
