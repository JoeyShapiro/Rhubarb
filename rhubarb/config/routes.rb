Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/hello", to: "hello#index"
  # better to do this instead of subdomain and multiple views with inheretance
  # get multiple in one part
  # should use sub stuff if this does have api (it will)
  get "/api/:call", to: "api#index", constraints: { call: /.*/ }
  constraints subdomain: 'app' do
    get "/test/:call", to: "hello#index", constraints: { call: /.*/ }
  end
end
