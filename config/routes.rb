Login::Application.routes.draw do

 root :to => "Users#home"

 #create login account
 get "/home/signup" =>"Users#signup", :as =>"signup"
 post "/home" => "Users#create_account", :as =>"create_account"

 #create
 get "users/new" =>"Users#new", :as =>"new_user"
 post "users/" => "Users#create"


#read
 get "/users" => "Users#index", :as => "users_list"
 get "/users/:id" =>"Users#detail", :as => "user_info"

 #update
 get "users/:id/edit" =>"Users#edit", :as =>"edit_user"
 put "users/:id" => "Users#update"

 #delete
 delete "/users/:id" =>"Users#destroy", :as =>"delete_user"

#login
 post "/home/login" =>"Users#login", :as =>"user_login"
 get "/home" =>"Users#home", :as => "home"


end
