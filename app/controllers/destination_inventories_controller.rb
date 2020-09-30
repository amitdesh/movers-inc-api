class DestinationInventoriesController < ApplicationController
  def index
    dest_inventories = DestinationInventory.all

    render json: dest_inventories
  end

  def create
    @dest_inv = DestinationInventory.create_all(params)
    # byebug
    # move_price = @dest_inv.price
    if @dest_inv
      render json: { destination: DestinationSerializer.new(@dest_inv) }, status: :created
    else
      render json: { error: 'Unable to create new move request. Please try again.' }, status: :not_acceptable
    end
  end

  private

  def request_params
    params.require(:destination_inventory).permit(:nested_array, :destination_id, :inventory_id, :count)
  end
end
