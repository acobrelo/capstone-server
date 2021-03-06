Rails.application.routes.draw do
  resources :items, except: [:new, :edit]
  resources :notes, except: [:new, :edit]
  resources :notebooks, except: [:new, :edit]
  resources :projects, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
