Rails.application.routes.draw do
  resources :tracks do
    resources :courses
  end

  resources :courses do
    resources :lessons
  end
end
