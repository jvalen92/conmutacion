class CmonoxidesController < ApplicationController

before_action :set_cmonoxide, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @cmonoxides= Cmonoxide.all
    json_response(@cmonoxides)
  end

  # POST /todos
  def create
    @cmonoxide= Cmonoxide.create!(cmonoxide_params)
    json_response(@cmonoxide, :created)
  end

  # GET /todos/:id
  def show
    json_response(@cmonoxide)
  end

  # PUT /todos/:id
  def update
    @cmonoxide.update(cmonoxide_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @cmonoxide.destroy
    head :no_content
  end

  private

  def cmonoxide_params
    # whitelist params
    params.permit(:value, :description)
  end

  def set_cmonoxide
    @cmonoxide= Cmonoxide.find(params[:id])
  end

end


