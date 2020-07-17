class MechanicProjectsController < ApplicationController
  def create
    mechanic = Mechanic.find(params[:mechanic_id])
    if !params[:ride].empty?
      ride = Ride.find(params[:ride])
      mechanic.rides << ride
    else
      flash[:notice] = "Must select a task"
    end
    redirect_to "/mechanics/#{mechanic.id}"
  end
end
