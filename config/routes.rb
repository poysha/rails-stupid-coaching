Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Route for the form where users can ask questions
  get 'ask', to: 'questions#ask', as: :ask

  # Route for the page where the coach answers the questions
  get 'answer', to: 'questions#answer', as: :answer

  # Defines the root path route ("/")
  # Uncomment and adjust if you want to set a specific root route
  # root "posts#index"
end
