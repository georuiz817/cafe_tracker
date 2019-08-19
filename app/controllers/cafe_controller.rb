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
        redirect '/'
    end
    
    get '/cafes/:id' do
        @cafe = Cafe.find_by_id(params[:id])
        erb :'cafes/show'
    end 

    get '/cafes/:id/edit' do 
        @cafe = Cafe.find_by_id(params[:id])
        erb :'cafes/edit'
    end 

    patch '/cafes/:id' do 
        @cafe = Cafe.find_by_id(params[:id])
        @cafe.name = params[:name]
        @cafe.location = params[:location]
        @cafe.wifi_avaliable = params [:wifi_avaliable]
        @cafe.save
        redirect '/cafes'
    end 

    delete '/cafes/:id' do 
        @cafe = Cafe.find_by_id(params[:id])
        @cafe.delete
        redirect '/cafes'
    end 
    
  end 

