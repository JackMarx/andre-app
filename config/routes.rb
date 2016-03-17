Rails.application.routes.draw do
  
  get "/" => 'visits#index'

  post "/visits" => 'visits#create'
  delete "/reset", to: 'visits#reset', as: 'reset'

end
