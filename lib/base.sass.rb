require 'base.sass/caniuse'
require 'base.sass/env'
require 'base.sass/inline-image'
require 'base.sass/json-parse'
require 'base.sass/list'
require 'base.sass/map'
require 'base.sass/ruby-to-sass'
require 'base.sass/selector'
require 'base.sass/strftime'
require 'base.sass/support'
require 'base.sass/url'

Sass.add_feature('-json-parse')
Sass.add_feature('-ruby-to-sass')

load_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'stylesheets'))

if ENV.key? 'SASS_PATH'
  ENV['SASS_PATH'] = ENV['SASS_PATH'] + File::PATH_SEPARATOR + load_path
else
  ENV['SASS_PATH'] = load_path
end
