class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
  end

  def create
  end

  def show
  end
end
