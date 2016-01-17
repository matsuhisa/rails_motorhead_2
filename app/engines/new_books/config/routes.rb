NewBooks::Engine.routes.draw do
  #resource :books, controller: 'books', only: :index
  get 'books', controller: 'books', action: :index
end
