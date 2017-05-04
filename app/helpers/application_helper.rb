module ApplicationHelper
  def active_menu_link?(path)
    'active' if current_page?(path)
  end
end
