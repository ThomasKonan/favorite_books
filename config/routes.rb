Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/books" => "books#index"
    post "/books" => "books#create"
    get "/books" => "books#show"
    patch "/books" => "books#update"
    destroy "/books" => "books#delete"
  end
end
