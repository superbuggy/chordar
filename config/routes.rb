Rails.application.routes.draw do
  root "chords#index"
  resources :chords
end
