class OpinionsController < ApplicationController
  before_action :set_opinion, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category]
      @opinions = Opinion.where(category: params[:category])
    else
      @opinions = Opinion.all
    end
  end

  def show
  end
  
  def new
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)

    if @opinion.save
      redirect_to @opinion
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @opinion.update(opinion_params)
      redirect_to @opinion
    else
      render :edit
    end
  end

  def destroy
    # set_opinion here
    @opinion.destroy
    redirect_to opinions_url
  end

  private

  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(:opinion).permit(:category, :subject, :body, :rating, :image_url)
  end
end
