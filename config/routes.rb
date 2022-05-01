Rails.application.routes.draw do
  
  resources :tweets

  get "/photos/index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/hello", to: "main#hello"

  # Usaremos el metodo root para definir el path de inicio
  root to: "main#hello"

  get "saludo", to: "main#hi"
  post "hi", to: "main#greetings" 
end
