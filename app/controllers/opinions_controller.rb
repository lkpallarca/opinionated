class OpinionsController < ApplicationController
  before_action :set_opinion, only: [:show, :edit, :update, :destroy]

  def index
    case params[:category]
    when "general"
      @opinions = Opinion.where(category: "general")
    when "academics"
      @opinions = Opinion.where(category: "academics")
    when "history"
      @opinions = Opinion.where(category: "history")
    when "events"
      @opinions = Opinion.where(category: "events")
    when "places"
      @opinions = Opinion.where(category: "places")
    when "people"
      @opinions = Opinion.where(category: "people")
    when "profession"
      @opinions = Opinion.where(category: "profession")
    when "animals"
      @opinions = Opinion.where(category: "animals")
    when "food"
      @opinions = Opinion.where(category: "food")
    when "movies"
      @opinions = Opinion.where(category: "movies")
    when "music"
      @opinions = Opinion.where(category: "music")
    when "objects"
      @opinions = Opinion.where(category: "objects")
    when "others"
      @opinions = Opinion.where(category: "others")
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
