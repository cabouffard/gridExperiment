class HomeController < PublicController
  def redirect_or_index
    render :index, status: :found, location: url_for(controller: :home, action: :index, locale: browser_locale)
  end

  def index
  end
end
