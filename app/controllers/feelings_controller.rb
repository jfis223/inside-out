class FeelingsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update]

  def index
    if params[:query].present?
      @feelings = policy_scope(Feeling).search_by_title_and_category_and_description(params[:query])
    elsif params[:search].present?
      @feelings = policy_scope(Feeling).where(category: params.dig(:search, :category))
    else
      @feelings = policy_scope(Feeling)
    end
  end

  def show
  end

  def new
    @feeling = Feeling.new
    authorize @feeling
  end

  def create
    @feeling = Feeling.new(feeling_params)
    @feeling.user = current_user
    authorize @feeling

    if @feeling.save
      redirect_to feeling_path(@feeling)
    else
      render :new
    end
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
    authorize @feeling
  end

  def feeling_params
    params.require(:feeling).permit(:title, :description, :image, :category, :price)
  end
end
