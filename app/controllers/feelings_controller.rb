class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end

  def show
    @feelings = Feeling.find(params[:id])
  end

  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.new(feeling_params)
  end

  def update
  end

  def edit
  end

  def results
  end
end
