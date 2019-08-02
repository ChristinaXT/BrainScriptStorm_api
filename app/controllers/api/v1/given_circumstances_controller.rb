class Api::V1::GivenCircumstancesController < ApplicationController
  before_action :set_given_circumstance, only: [:show, :update, :destroy]

  # GET /given_circumstances
  # GET /given_circumstances.json
  def index
    @given_circumstances = GivenCircumstance.all
    render json: @given_circumstances
  end

  # GET /given_circumstances/1
  # GET /given_circumstances/1.json
  def show
    render json: @given_circumstance
  end

  # POST /given_circumstances
  # POST /given_circumstances.json
  def create
    @given_circumstance = GivenCircumstance.new(given_circumstance_params)

    if @given_circumstance.save
      render json: @given_circumstance, status: :created, location: @given_circumstance
    else
      render json: @given_circumstance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /given_circumstances/1
  # PATCH/PUT /given_circumstances/1.json
  def update
    if @given_circumstance.update(given_circumstance_params)
      render json: @given_circumstance
    else
      render json: @given_circumstance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /given_circumstances/1
  # DELETE /given_circumstances/1.json
  def destroy
    @given_circumstance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given_circumstance
      @given_circumstance = GivenCircumstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def given_circumstance_params
      params.require(:given_circumstance).permit(:character_background)
    end
end
