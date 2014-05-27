module ApplicationHelper
  def title(title)
    content_for(:title, title)
  end

  def icon(*classes)
    raw("<span class=\"fa #{classes.join(" ")}\"></i>")
  end

  def icon_and_text(icon_class, text)
    raw("#{icon(icon_class)}&nbsp;#{text}")
  end

  def text_and_icon(text, icon_class)
    raw("#{text}&nbsp;#{icon(icon_class << ' fa-append')}")
  end
end
