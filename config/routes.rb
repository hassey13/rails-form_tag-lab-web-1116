Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/student/:id', to: 'students#show', as: 'student'

  post '/students', to: 'students#create', as: 'create_student'

end
