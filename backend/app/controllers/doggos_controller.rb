class DoggosController < ApplicationController

  def index
      @doggos = Doggo.all
      render json: @doggos
  end
  

  def  show
  end 



end