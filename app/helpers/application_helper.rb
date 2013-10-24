module ApplicationHelper
  def active_navbar_element
    params[:controller] + "#" + params[:action] unless params.empty?
  end

  def on_homepage?
    if active_navbar_element == "application#index"
      return true
    else
      return false
    end
  end

  def banner_title
    if params[:controller] == "posts"
      return "Grndz Blog"
    elsif active_navbar_element == "application#about_page"
      return "Grndz About"
    elsif active_navbar_element == "application#contact_page"
      return "Grndz Contact"
    end
  end
end
