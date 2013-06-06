Planets::Application.routes.draw do

resources :planets, :moons
root :to => 'home#index'
end
