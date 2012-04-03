CloudspongeAddonRails::Application.routes.draw do
  post '/heroku/resources' => 'heroku#create', as: :provision
  delete '/heroku/resources/:id' => 'heroku#destroy', as: :deprovision
end
