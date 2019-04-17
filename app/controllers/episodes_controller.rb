class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :update, :destroy]

  def index
    @episodes=Episode.all
    render json: @episodes
  end

  def create
    @episode = Episode.create!(episode_params)
    render json: @episodes, status: :created
  end

  def show
    render json: @episode
  end

  def update
    @episode.update(episode_params)
    head :no_content
  end

  def destroy
    @episode.destroy
    head :no_content
  end

  private

  def episode_params
    # whitelist params
    params.permit(:title, :plot)
  end

  def set_episode
    @episode = Episode.find(params[:id])
  end
end
