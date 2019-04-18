Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :movies, :seasons, :episodes, :libraries
  end
  namespace :api do
    namespace :v1 do
      get 'endpoint1', to: 'agents#endpoint1'
      get 'endpoint2', to: 'agents#endpoint2'
      get 'endpoint3', to: 'agents#endpoint3'
      get 'endpoint4', to: 'agents#endpoint4'
      get 'endpoint5', to: 'agents#endpoint5'
    end
  end
end
