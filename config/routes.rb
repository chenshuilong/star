Rails.application.routes.draw do
  get 'product/index'
  get 'introduce/index'
  get 'contact/index'
  get 'case/index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
