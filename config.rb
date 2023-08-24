# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# https://stackoverflow.com/questions/27680342/how-to-deploy-a-middleman-site-to-github-user-page/27687486#27687486
#set :relative_links, true

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml' , layout: false
page '/*.json', layout: false
page '/*.txt' , layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
  def image_url(path) = image_tag(path).sub(/.+src="([^"]+)".+/, '\1')
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :development do
  set :http_prefix, "/"
end

configure :build do
  set :http_prefix, "/djmngr-hp/"
  #activate :relative_assets
  activate :minify_css
  activate :minify_javascript, compressor: Terser.new # https://github.com/middleman/middleman/issues/2530
  activate :asset_hash
end
