InterviewBlog::Application.routes.draw do

  resources :articles, only: [:index, :show]
  resources :comments, only: [:create, :show]

  namespace :admin do
    resources :articles

    get "dashboard", to: "dashboard#index"
  end

  devise_for :users
  root :to => 'articles#index'
end
