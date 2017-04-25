Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
   	resources :articles do
   		resources :comments
 	  	
      member do
   			get :add_comment
   			post :create_comment
 	  	end
   	end
   	
  root 'welcome#index'
end
