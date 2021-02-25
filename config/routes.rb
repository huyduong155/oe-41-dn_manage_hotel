Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root to: "static_pages#home"
    get "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "static_pages/rooms"
    get "static_pages/about"
    get "static_pages/gallery"
    get "session/login"
  end
end
