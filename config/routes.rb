Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :content_blocks, :only => [:index, :edit, :update]
  end

end