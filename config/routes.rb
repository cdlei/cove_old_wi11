Cove::Application.routes.draw do
  resources :intervals

  devise_for :users, :path => "/", :path_names => {:sign_in => "login", 
    :sign_out => "logout"}
  
  controller :nda do
    get "/nda" => "nda#index"
    post "/nda" => "nda#create"
  end
  
  root  :to => "place_holder#index"
end
