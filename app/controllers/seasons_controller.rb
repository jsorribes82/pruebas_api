class SeasonsController < ApplicationController
    before_action :set_season, only: [:show, :update, :destroy]

    def index
      @seasons=Season.all
      render json: @seasons
    end

    def create
      @season = Season.create!(season_params)
      render json: @seasons, status: :created
    end

    def show
      render json: @season
    end

    def update
      @season.update(season_params)
      head :no_content
    end

    def destroy
      @season.destroy
      head :no_content
    end

    private

    def season_params
      # whitelist params
      params.permit(:title, :plot, :num_episode)
    end

    def set_season
      @season = Season.find(params[:id])
    end
end
