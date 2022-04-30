Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/hello", to: "main#hello"

  # Por convencion la primera parte del path es el controlador
  # y la segunda el metodo
  get "/cursos/gratuitos"
  # cursos_controller 
  # En el archivo veriamos CursosController def gratuitos end

  get "cursos", to: "courses#index"
  # Buscara Rails lo mismo
end
