module ApplicationHelper

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div()
    end
  end


  def markdown(content)
    renderer = CodeRayify.new(hard_warp: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emaphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      highlight: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
