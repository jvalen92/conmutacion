class HumiditiesController < ApplicationController
before_action :set_humidity, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @humudities = Humidity.all
    json_response(@humudities)
  end

  # POST /todos
  def create
    @humidity = Humidity.create!(humidity_params)
    json_response(@humidity, :created)
  end

  # GET /todos/:id
  def show
    json_response(@humidity)
  end

  # PUT /todos/:id
  def update
    @humidity.update(humidity_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @humidity.destroy
    head :no_content
  end

  private

  def humidity_params
    # whitelist params
    params.permit(:value, :description)
  end

  def set_humidity
    @humidity= Humidity.find(params[:id])
  end

end
