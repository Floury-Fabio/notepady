Rails.application.routes.draw do
  resources :tags
  resources :notepads do
    resources :notes
  end

  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    }
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
