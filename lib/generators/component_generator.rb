class ComponentGenerator < Rails::Generators::NamedBase
  desc "This generator will create the relevant Sass and html files needed for a new component"
  def create_new_component
    @component_name = name.split('/').last
    @component_path = name.sub!(@component_name, '')

    create_file "app/assets/stylesheets/components/#{@component_path}/_#{@component_name}.scss", ""
    append_file "app/assets/stylesheets/application.scss", "\n@import 'components/#{@component_path}#{@component_name}';"
    create_file "app/views/components/#{@component_path}/_#{@component_name}.html.erb", ""
  end
end
