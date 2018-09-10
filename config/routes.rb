Rails.application.routes.draw do

  resources :articles
  get "welcome/index"

=begin
  GET "/articles"          index
  POST "/articles"         create
  DELETE "/articles/:id"       delete
  GET "/articles/:id"      show
  GET "/articles/new"      new
  GET "/articles/:id/edit" edit
  PATCH "/articles"        update
  PUT "/articles"          update

=end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'




end
