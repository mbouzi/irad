Rails.application.routes.draw do

  resources :artists do
    resource :artist_genres
    resources :albums
  end

  resources :record_labels, path: 'recordlabels'
  resources :genres

end
