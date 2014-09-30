module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block) 
	if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end 

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Tour of Tauranga"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
