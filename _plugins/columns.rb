module Jekyll
  class ColumnTagBlock < Liquid::Block

    def render(context)
      text = super
      "<div class='half-col' markdown=1>#{text}</div>"
    end

  end
  class ColumnSpanTagBlock < Liquid::Block

    def render(context)
      text = super
      "<div markdown=1>#{text}</div>"
    end

  end
  class ColumnSpanCenterTagBlock < Liquid::Block

    def render(context)
      text = super
      "<div class='center' markdown=1>#{text}</div>"
    end

  end
end

Liquid::Template.register_tag('column', Jekyll::ColumnTagBlock)
Liquid::Template.register_tag('column_span', Jekyll::ColumnSpanTagBlock)
Liquid::Template.register_tag('column_span_center', Jekyll::ColumnSpanCenterTagBlock)
