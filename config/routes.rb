Rails.application.routes.draw do
		scope module: :starter_kit do 
				resources :starter_kits
			end  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
