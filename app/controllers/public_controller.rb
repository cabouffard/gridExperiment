class PublicController < ApplicationController
  skip_before_filter :authenticate_user!
  layout "public"

  def set_locale
    I18n.locale = params[:locale] || browser_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }
  end
end