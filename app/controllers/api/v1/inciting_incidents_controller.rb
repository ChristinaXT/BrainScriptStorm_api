class IncitingIncidentsController < ApplicationController
  before_action :set_inciting_incident, only: [:show, :update, :destroy]

  # GET /inciting_incidents
  # GET /inciting_incidents.json
  def index
    @inciting_incidents = IncitingIncident.all
    render json: @inciting_incidents
  end

  # GET /inciting_incidents/1
  # GET /inciting_incidents/1.json
  def show
    render json: @inciting_incident
  end

  # POST /inciting_incidents
  # POST /inciting_incidents.json
  def create
    @inciting_incident = IncitingIncident.new(inciting_incident_params)

    if @inciting_incident.save
      render json: @inciting_incident, status: :created, location: @inciting_incident
    else
      render json: @inciting_incident.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inciting_incidents/1
  # PATCH/PUT /inciting_incidents/1.json
  def update
    if @inciting_incident.update(inciting_incident_params)
      render json: @inciting_incident
    else
      render json: @inciting_incident.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inciting_incidents/1
  # DELETE /inciting_incidents/1.json
  def destroy
    @inciting_incident.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inciting_incident
      @inciting_incident = IncitingIncident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inciting_incident_params
      params.require(:inciting_incident).permit(:description)
    end
end
