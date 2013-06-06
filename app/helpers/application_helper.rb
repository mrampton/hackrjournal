module ApplicationHelper

  def full_title(page_title=nil)
    base_title = TITLE
    if page_title.blank?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
