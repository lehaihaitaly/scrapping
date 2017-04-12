Rails.application.routes.draw do
  get 'scrapping/index'
  get 'scrapping/scrapping'

  root 'scrapping#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
