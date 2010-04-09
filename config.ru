use Rack::Static, :urls => [/./], :root => './'

run lambda { |env|
  [  200,
     { 'Content-Type' => 'text/html',
       'Cache-Control' => 'public, max-age=86400'
     },
     File.read('./index.html')
  ]
}