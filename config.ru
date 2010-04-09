run lambda { |env|
  env["PATH_INFO"] = "index.html" if env["PATH_INFO"] == "/"
  Rack::File.new(".").call(env)
}