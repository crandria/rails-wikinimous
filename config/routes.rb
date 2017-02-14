Rails.application.routes.draw do
  root                    to: 'articles#index'

  get 'articles/new',    to: 'articles#new'
  post 'articles',       to: 'articles#create'

  get 'articles',        to: 'articles#index'
  delete 'articles/:id', to: 'articles#destroy'

  get 'articles/:id',    to: 'articles#show', as: :airplane

  get 'articles/:id/edit',  to: 'articles#edit'
  patch 'articles/:id',  to: 'articles#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
