class ElementGenerator < Rails::Generators::NamedBase
  desc "This generator will create the relevant Sass and html files needed for a new element"
  def create_new_element
    @element_name = name.split('/').last
    @element_path = name.sub!(@element_name, '')

    create_file "app/assets/stylesheets/elements/#{@element_path}/_#{@element_name}.scss", ""
    append_file "app/assets/stylesheets/application.scss", "\n@import 'elements/#{@element_path}#{@element_name}';"
    create_file "app/views/elements/#{@element_path}/_#{@element_name}.html.erb", ""
  end
end
