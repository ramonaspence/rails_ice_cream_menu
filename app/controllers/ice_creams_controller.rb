class IceCreamsController < ApplicationController

    def index
        @ice_cream = IceCream.all
    end

    def new
        @ice_cream = IceCream.new
    end

    def show
        @ice_cream = IceCream.find(params[:id])
    end

    def create
        @ice_cream = IceCream.new(ice_cream_params)
        if @ice_cream.save
            redirect_to @ice_cream
        else
            render 'new'
        end
    end

    def edit
        @ice_cream = IceCream.find(params[:id])
    end

    def update
        @ice_cream = IceCream.find(params[:id])

        if @ice_cream.update(ice_cream_params)
            redirect_to @ice_cream
        else
            render 'edit'
        end
    end

    def destroy
        @ice_cream = IceCream.find(params[:id])
        @ice_cream.destroy

        redirect_to ice_creams_path
    end

    private
        def ice_cream_params
            params.require(:ice_cream).permit(:name, :description, :available, :featured, :date_churned)
        end
end
