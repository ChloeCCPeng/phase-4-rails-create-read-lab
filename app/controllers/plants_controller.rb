class PlantsController < ApplicationController

    def index
        render json: Plant.all, except: [:created_at, :updated_at], status: :ok
    end

    def show
        render json: Plant.find_by(id: params[:id]), except: [:created_at, :updated_at], status: :ok
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
    end
    
end
# name: 'Pilea peperomioides',
# image: './images/pilea.jpg',
# price: 5.99