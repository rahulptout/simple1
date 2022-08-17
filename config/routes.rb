Rails.application.routes.draw do

  resources :logindata do
    member do
      get :delete
    end
  end

  get 'section/index'
  get 'section/show'
  get 'section/new'
  get 'section/edit'
  get 'section/delete'
  root 'demo#index'
  get 'subjects/method_show'
  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'
  get 'demo/hello1'
  # get 'demo/google'
  # root 'demo/index' defaults  page open
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
