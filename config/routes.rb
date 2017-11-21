Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :humidities do
  end

   resources :temperatures do
  end

  resources :cmonoxides do
  end


end
