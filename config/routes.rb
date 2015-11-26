Rails.application.routes.draw do

  root 'vault#all'

  get ':type/*pattern/raw', :controller => 'vault', :action => 'raw'
  get ':type/*pattern', :controller => 'vault', :action => 'show'
  
end
