class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  def index
    @movies=Movie.all
    render json: @movies
  end

  def create
    @movie = Movie.create!(movie_params)
    render json: @movies, status: :created
  end

  def show
    render json: @movie
  end

  def update
    @movie.update(movie_params)
    head :no_content
  end

  def destroy
    @movie.destroy
    head :no_content
  end

  private

  def movie_params
    # whitelist params
    params.permit(:title, :plot, :season_id)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
