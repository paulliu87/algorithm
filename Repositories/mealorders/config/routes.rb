Rails.application.routes.draw do

	get 'welcome/index'
	resources :meals
	root 'welcome#index'
end
