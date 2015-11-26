module ApplicationHelper
  def render_source args={}
      @html_encoder ||= HTMLEntities.new
      raw(@html_encoder.encode(render args))
  end

  def highlight(&block)
      formatter = Rouge::Formatters::HTML.new(wrap: false)
      lexer = Rouge::Lexers::HTML.new

      content = capture(&block)
      raw '<pre class="syntax">' + formatter.format(lexer.lex(content)) + '</pre>'
    end
end
