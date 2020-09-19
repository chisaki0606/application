Rails.application.routes.draw do
  get "/" => "users#list"
  get "users/form" => "users#form"
  get "users/:id" => "users#show" 
end
