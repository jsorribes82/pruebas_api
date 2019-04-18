class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :update, :destroy]

  def index
    @libraries=Library.all
    render json: @libraries
  end

  def create
    @library = Library.create!(library_params)
    render json: @libraries, status: :created
  end

  def show
    render json: @library
  end

  def update
    @library.update(library_params)
    head :no_content
  end

  def destroy
    @library.destroy
    head :no_content
  end

  private

  def library_params
    # whitelist params
    params.permit(:price, :quality)
  end

  def set_library
    @library = Library.find(params[:id])
  end
end
