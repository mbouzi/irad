Rails.application.routes.draw do
  resources :artists
  resources :record_labels

  get '/recordlabels', to: 'record_labels#index'
end
