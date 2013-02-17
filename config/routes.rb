Banner::Application.routes.draw do

  match "/bs/:id" => "banner_rotate#show"
  match "/bc/:id" => "banner_rotate#click"

  devise_for :users, :skip => :registrations
  resources :campaigns do
    resources :images, :except => [:index, :show]
  end
  resources :users, :only => [:edit, :update]

  root to: 'campaigns#index'
end
