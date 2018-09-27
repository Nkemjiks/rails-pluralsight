Rails.application.routes.draw do
  resources :questions
  root 'home#index'
  get '/about' => 'home#about'
  post '/questions' => 'home#askquestion'
  post '/answer' => 'home#askquestion'
  get '/questions/:id' => 'home#question'

  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
