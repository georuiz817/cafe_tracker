class CafeController < ApplicationController
  
    get '/cafes' do
         
        @cafes = Cafe.all 
        erb :'cafes/index'
    end
  
  
  
end