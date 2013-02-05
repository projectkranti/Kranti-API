KrantiApi::Application.routes.draw do

  resources :issues, :only => [:create, :index]

end
