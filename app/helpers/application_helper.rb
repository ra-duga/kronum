module ApplicationHelper

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : nil
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  #получаем квартал из даты
  def get_quarter(d)
    "#{d.month/4+1} квартал #{d.year}"
  end

end
