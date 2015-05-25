Rails.application.routes.draw do
  resources :artists
  resources :record_labels, path: 'recordlabels'
  resources :genres

end
