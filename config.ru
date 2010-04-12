run lambda { |env|
  env["PATH_INFO"] = "home.html" if env["PATH_INFO"] == "/"
  Rack::File.new(".").call(env)
}