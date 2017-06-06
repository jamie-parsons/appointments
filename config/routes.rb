Rails.application.routes.draw do
  get 'appointments/new'

  get 'patients/index'

  get 'patients/new'

  get 'patients/edit'

  get 'doctors/index'

  get 'doctors/show'

  get 'doctors/new'

  get 'doctors/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'patients#index'

  resources :doctors
  resources :patients
  resources :appointments, only: [:new, :create, :destroy]
end
