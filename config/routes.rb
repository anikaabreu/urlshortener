Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'url#show'
    post 'show'=>'url#create'
    get '/:id' => 'url#redirect'
end
