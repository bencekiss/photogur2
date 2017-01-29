Rails.application.routes.draw do
  root 'images#index'

  # get 'images/index'
  #
  # get 'images/new'
  #
  # get 'images/create'
  #
  # get 'images/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'images' => 'images#index'

  post 'images' => 'images#create'
  get 'images/new' => 'images#new'

  get 'images/:id' => 'images#show', as: 'image'

  get 'images/:id/edit' => 'images#edit', as: "edit_image"
  patch 'images/:id' => "images#update"

end
