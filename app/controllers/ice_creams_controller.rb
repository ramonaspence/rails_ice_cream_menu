class IceCreamsController < ApplicationController

    def index
        @ice_cream = IceCream.all
    end

    def new
    end

    def show
        @ice_cream = IceCream.find(params[:id])
    end

    def create
        @ice_cream = IceCream.new(ice_cream_params)

        @ice_cream.save
        redirect_to @ice_cream
    end

    def destroy
        @ice_cream = IceCream.find(params[:id])
        @ice_cream.destroy

        redirect_to ice_creams_path
    end

    private
        def ice_cream_params
            params.permit(:name, :description, :available, :featured, :date_churned)
        end
end
