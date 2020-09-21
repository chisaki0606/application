Rails.application.routes.draw do
  get "/" => "users#list"
  get "users/form" => "users#form"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  get "users/new" => "user#new"
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
end
