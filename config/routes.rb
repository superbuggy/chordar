Rails.application.routes.draw do
  root "chords#index"
  resources :songs, :chords
end
