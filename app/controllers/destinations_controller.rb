class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create destination_params
    redirect_to root_path #redirect to show page when i creat one
  end

  def edit
    @destination = Destination.find params[:id]
  end

  def update
    destination = Destination.find params[:id]
    destination.update destination_params
    redirect_to destination
  end

  def show
    @destination = Destination.find params[:id]

  end

  def destroy
    destination = Destination.find params[:id]
    destination.destroy
    redirect_to root_path
  end

  private #only call this from inside the UsersController because thats where its needed
  def destination_params #this is how we get things from the form
    params.require(:destination).permit(:name, :location, :activity, :familyf, :image)

  end
end
