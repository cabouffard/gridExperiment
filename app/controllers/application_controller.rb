class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :set_locale
  layout "app_full"

  def set_locale
    I18n.locale = cookies.signed[:locale] || browser_locale
  end

  def browser_locale
    case request.env["HTTP_ACCEPT_LANGUAGE"].to_s.scan(/^[a-z]{2}/).first
    when "en"
      "en"
    when "fr"
      "fr"
    else
      I18n.default_locale
    end
  end

  # Handle via a method when there's no HTTP_REFERER
  def redirect_to_back(default = root_url)
    if !request.env["HTTP_REFERER"].blank? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
      redirect_to :back
    else
      redirect_to default
    end
  end
end
