class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @feeling = Feeling.find(params[:feeling_id])
    authorize @review
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @review = Review.new(review_params)
    @review.feeling = @feeling
    authorize @review

    if @review.save # true / false
      redirect_to feeling_path(@feeling)
    else
      render 'feelings/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
