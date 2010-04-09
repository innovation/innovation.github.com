require 'rack/contrib'
require 'rack-rewrite'

use Rack::StaticCache, :urls => ['/images', '/stylesheets', 'javascripts', '/favicon.ico'], :root => ''
use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
run Rack::Directory.new('')