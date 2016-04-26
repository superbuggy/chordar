Rails.application.routes.draw do
  root "chords#index"
  resources :chords
  resources :notes, only: [:index, :show]
end
