Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  resources :subjects
  resources :tutor_subjects
  resources :users
  resources :student_tutors
  resources :reviews

  get '/users/subjects/:id', to: 'users#subjects'
  post '/users/subjects/:id', to: 'users#subjectupdate'
end
