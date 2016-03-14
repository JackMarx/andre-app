Rails.application.routes.draw do
  
  get "/" => 'visits#index'

  post "/visits" => 'visits#create'

end
