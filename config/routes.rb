Rails.application.routes.draw do
<<<<<<< HEAD
  root 'projects#index'
  devise_for :users, :path => "/Mon_Profil"
  resources :projects, :path => "/Projets" do
    resources :feats, :path => "/Feats"
  end
  resources :attachements, only: [:destroy]
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> fe759008f1ddb5995230346ca629d4f45ea2a88e
end
