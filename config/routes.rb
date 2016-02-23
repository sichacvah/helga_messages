Rails.application.routes.draw do
  mount API => '/'
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  get 'login' => 'user_sessions#new', :as => :login

	post 'logout' => 'user_sessions#destroy', :as => :logout
	resources :user_sessions
	root 'user_sessions#new'

	resources :tickets

end
