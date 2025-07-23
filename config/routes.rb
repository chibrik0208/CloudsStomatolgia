Rails.application.routes.draw do
  root to: "pages#main"

  post "/callback", to: "pages#callback", as: :callback
end
