module Sass::Script::Functions

  def env(name)
    assert_type name, :String
    ruby_to_sass(ENV[name.value.gsub('-', '_').upcase])
  end

end
