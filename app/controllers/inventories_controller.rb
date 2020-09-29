class InventoriesController < ApplicationController
    def index
        inventories = Inventory.all
    
        render json: inventories
      end
    
      def create
        @inventory = Inventory.create(inv_params)
        # byebug
        if @inventory.valid?
          render json: { inventory: InventorySerializer.new(@inventory), destination: @inventory.destination. }, status: :created
        else
          render json: { error: 'Unable to create new move request. Please try again.' }, status: :not_acceptable
          end
      end
    
      private
    
      def dest_params
        params.require(:destination).permit(:inventory{})
      end
end
