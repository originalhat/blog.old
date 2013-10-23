module ApplicationHelper
  def active_navbar_element
    params[:controller] + "#" + params[:action] unless params.empty?
  end
end
