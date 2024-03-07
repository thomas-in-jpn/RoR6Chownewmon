Rails.application.routes.draw do
  get 'messages/index'
  get 'messages', to: 'messages#index'

  get 'messages/add'
  post 'messages/add', to: 'messages#create'

  get 'messages/edit/:id' , to: 'messages#edit'
  patch 'messages/edit/:id' , to: 'messages#update'

  get 'messages/delete/:id', to: 'messages#delete'
  get 'messages/:id', to: 'messages#show'

  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/new'
  post 'cards/new'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'
  get 'cards/delete/:id', to: 'cards#delete'
  
  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'

  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/add'
  post 'people/add', to: 'people#create'
  get 'people/find'
  post 'people/find'
  get 'people/edit/:id', to: 'people#edit'
  post 'people/edit/:id', to: 'people#update'
  patch 'people/edit/:id', to: 'people#update'
  get 'people/delete/:id', to: 'people#delete'
  get 'people/:id', to: 'people#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hello/index'
  get 'hello/other'
  get 'hello/message'
  get 'hello', to: 'hello#index'

  post 'hello', to: 'hello#index'
  post 'hello/index'

  get 'select/index'
  get 'select', to: 'select#index'

  post 'select/index'
  post 'select', to: 'select#index'

  get 'multi_list/index'
  get 'multi_list', to: 'multi_list#index'

  post 'multi_list/index'
  post 'multi_list', to: 'multi_list#index'
  
end
