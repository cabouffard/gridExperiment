Rails.application.routes.draw do

  # Locale
  put "locale/:locale", to: "locale#update", as: "update_locale"

  # Marketing english
  scope "/:locale", locale: /en/, as: :en do
    get "/", to: "home#index", as: :home
  end

  # Marketing french
  scope "/:locale", locale: /fr/, as: :fr do
    get "/", to: "home#index", as: :home
  end

  # Root
  root "home#redirect_or_index"
end
