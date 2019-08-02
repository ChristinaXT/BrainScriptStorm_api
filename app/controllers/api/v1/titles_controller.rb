class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :update, :destroy]

  # GET /titles
  # GET /titles.json
  def index
    @titles = Title.all
    render json: @titles
  end

  # GET /titles/1
  # GET /titles/1.json
  def show
    render json: @title
  end

  # POST /titles
  # POST /titles.json
  def create
    @title = Title.new(title_params)

    if @title.save
      render json: @title, status: :created, location: @title
    else
      render json: @title.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /titles/1
  # PATCH/PUT /titles/1.json
  def update
    if @title.update(title_params)
      render json: @title
    else
      render json: @title.errors, status: :unprocessable_entity
    end
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    @title.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_params
      params.fetch(:title).permit(:name)
    end
end
