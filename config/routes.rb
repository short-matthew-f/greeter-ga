Rails.application.routes.draw do
  root 'users#index'

  resources :users

  resources :students, controller: 'users', type: 'Student'
  resources :instructors, controller: 'users', type: 'Instructor'

  resources :enrollments
  resources :cohorts
end
