Rails.application.routes.draw do
  resources :opinions
  get '/', to: 'opinions#index'
end
