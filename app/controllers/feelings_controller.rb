class FeelingsController < ApplicationController
  before_action :set_task, only: [:show, :edit]

  def index
    @feelings = Feeling.all
  end

  def show
  end

  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.new(feeling_params)
    if @feeling.save
      redirect_to @feeling, notice: 'Your new feeling has been created!'
    else
      render :new
  end

  def edit
  end

  def update
    @feeling.update(feeling_params)
    redirect_to feeling_path
  end

  def results
  end

private

def set_task
  @feeling = Feeling.find(params[:id])
end

def feeling_params
  params.require(:feeling).permit(:title, :description, :image, :availability, :category, :price)
end

end
