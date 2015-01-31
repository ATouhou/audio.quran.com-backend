Rails.application.routes.draw do

  resources :qaris, only: [:index, :show] do
    resources :audio_files, only: [:index, :show] 
  end
end
