Rails.application.routes.draw do

  resources :qaris, only: [:index, :show] do
    resources :audios, only: [:index, :show] 
  end
end
