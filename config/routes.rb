Rails.application.routes.draw do
  get "hola", to: "main#hello"
  root to: "main#hello"
  
  get "saludo", to: "main#hi"
  post "hi", to: "main#greetings"
end
