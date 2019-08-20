class CafeController < ApplicationController
    get '/cafes' do 
        @cafes = current_user.cafes.all
        erb :'cafes/index'
    end 

    get '/cafes/new' do
        erb :'cafes/new'
    end

    post '/cafes' do
     @cafe = current_user.cafes.create(name: params["name"],location: params["location"],wifi_avaliable: params["wifi_avaliable"])
    end 


    
  end 

