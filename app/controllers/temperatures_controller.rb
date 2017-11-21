class TemperaturesController < ApplicationController

before_action :set_temperature, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @temperatures = Temperature.all
    json_response(@temperatures)
  end

  # POST /todos
  def create
    @temperature= Temperature.create!(temperature_params)
    json_response(@temperature, :created)
  end

  # GET /todos/:id
  def show
    json_response(@temperature)
  end

  # PUT /todos/:id
  def update
    @temperature.update(temperature_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @temperature.destroy
    head :no_content
  end

  private

  def temperature_params
    # whitelist params
    params.permit(:value, :description)
  end

  def set_temperature
    @temperature= Temperature.find(params[:id])
  end

end

