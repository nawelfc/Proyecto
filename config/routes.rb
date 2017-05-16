Rails.application.routes.draw do
  #get 'main/index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  devise_for :users
  get 'main/index'
   	resources :articles do
   		resources :comments
 	  	
      member do
   			get :add_comment
   			post :create_comment
 	  	end
   	end
   	
  root 'main#index'
end
