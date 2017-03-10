Rails.application.routes.draw do

  resources :locations do
    resources :activities
  end

end
