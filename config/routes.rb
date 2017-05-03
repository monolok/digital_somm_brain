Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "testables#index"
get "/test", to: "testables#test"
post "/send", to: "testables#sending"
end
