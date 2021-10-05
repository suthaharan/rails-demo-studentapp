Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :teachers do
    member do
      get :delete
    end
  end

  resources :students do
    member do
      get :delete
    end
  end


  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'
  # get 'students/delete'
  # get 'teachers/index'
  # get 'teachers/show'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teachers/delete'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
