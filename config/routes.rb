Rails.application.routes.draw do
  get 'school_class/create'

  get 'school_class/show'

  get 'school_class/edit'

  get 'school_class/update'

  get 'student/create'

  get 'student/show'

  get 'student/edit'

  get 'student/update'

  resources :students, only: [:create, :show, :edit, :update, :new]
  resources :school_classes, only: [:create, :show, :edit, :update, :new]

end
