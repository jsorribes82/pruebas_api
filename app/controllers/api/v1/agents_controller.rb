class API::V1::AgentsController < ApplicationController
  def endpoint1
    @movies=Movie.order( created_at: :asc)
    render json: @movies
  end

  def endpoint2
    @seasons=Season.order( created_at: :asc).episode.order(id: :asc)
    render json: @seasons
  end

  def endpoint3
    @movies=Movie.joins("inner join seasons").order( created_at: :asc)
    render json: @movies
  end

  def endpoint4
    @library = Library.create!(library_params)
    render json: @library, status: :created
  end

  def endpoint5
    @library = Library.order(created_at: :asc).find_by(user_id: 1)
    render json: @library
  end
  private

  def library_params
    # whitelist params
    params.permit(:price, :quality)
  end
end