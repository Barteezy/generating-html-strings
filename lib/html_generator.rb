class HTMLGenerator

  def initialize(layout = nil)
    @layout = layout || "CONTENT"
  end


  def section(text)
   layout("<section>#{text}</section>")

  end

  def unordered_list(items)
    layout("<ul>" + items.map { |i| "<li>#{i}</li>" }.join + "</ul>")
  end

  def button(button, type = {})
    if type[:class] == nil
    layout("<button>#{button}</button>")
    else
    layout("<button class='#{type[:class]}'>#{button}</button>")
    end
  end


  private

  def layout(inner_html)
    @layout.gsub("CONTENT", inner_html)
  end



end