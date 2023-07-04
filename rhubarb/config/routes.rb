Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/hello", to: "hello#index"
  get "/api/:call", to: "api#index", constraints: { call: /.*/ }
  constraints subdomain: 'app' do
    
  end

  constraints subdomain: 'api' do
    # get "/test/:call", to: "hello#test"
    get "/test/:call", to: "hello#index", constraints: { call: /.*/ }
  end
end
