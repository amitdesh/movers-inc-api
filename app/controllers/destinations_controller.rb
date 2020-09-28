class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all

    render json: users
  end

  def create
    @destination = Destination.create(dest_params)
    if @destination.valid?
      render json: { destination: DestinationSerializer.new(@destination), user: @destination.user }, status: :created
    else
      render json: { error: 'Unable to create new move request. Please try again.' }, status: :not_acceptable
      end
  end

  private

  def dest_params
    params.require(:destination).permit(:location, :date, :time)
  end
end
