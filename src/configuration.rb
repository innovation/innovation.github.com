require "compass"

# Parse the Compass config
Compass.add_project_configuration("config.rb")

# Default is 3000
configuration.preview_server_port = 80

# Default is localhost
configuration.preview_server_host = "localhost"

# Default is true
# When false .html & index.html get stripped off generated urls
configuration.use_extensions_for_page_links = true

# Default is an empty hash
# We use Compass's config
configuration.sass_options = Compass.sass_engine_options

# Default is an empty hash
# http://haml-lang.com/docs/yardoc/file.HAML_REFERENCE.html#options
configuration.haml_options = {
  #:format => :html5,
  :attr_wrapper => '"'
}

# Change default site_dir
module StaticMatic::BuildMixin
  alias :generate_site_file_ :generate_site_file

  def generate_site_file(*args)
    @site_dir = @base_dir
    generate_site_file_(*args)
  end
end