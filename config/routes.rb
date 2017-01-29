Rails.application.routes.draw do
  # get 'images/index'
  #
  # get 'images/new'
  #
  # get 'images/create'
  #
  # get 'images/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'images' => 'images#index'
  get 'images/:id' => 'images#show', as: 'image'

end
