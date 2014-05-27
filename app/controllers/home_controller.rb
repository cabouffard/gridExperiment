class HomeController < PublicController
  def redirect_or_index
    if user_signed_in?
      redirect_to edit_user_registration_url(locale: nil)
    else
      render :index, status: :found, location: url_for("home#index", locale: browser_locale)
    end
  end

  def index

  end
end
