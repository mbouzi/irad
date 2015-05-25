Rails.application.routes.draw do

  resources :artists do
    resource :artist_genres
  end

  resources :record_labels, path: 'recordlabels'
  resources :genres
end
