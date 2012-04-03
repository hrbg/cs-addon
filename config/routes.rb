CloudspongeAddonRails::Application.routes.draw do
  post '/heroku/resources' => 'heroku#create', as: :provision
  delete '/heroku/resources/:id' => 'heroku#destroy', as: :deprovision

  root :to => "cloudsponge#index"
end
