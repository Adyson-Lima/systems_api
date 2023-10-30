class Api::V1::SystemsController < ApplicationController

  before_action :set_system, only: %i[ show ] #show update destroy

  def index
    @systems = System.all
    render json: @systems
  end

  def show
    render json: @system
  end

  def create
    @system = System.new(system_params)
    if @system.save
      render json: @system, status: :created, location: api_v1_system_url(@system)
    else
      render json: @system.errors, status: :unprocessable_entity
    end
  end

private

def set_system
  @system = System.find(params[:id])
end

def system_params
  params.require(:system).permit(:name, :manufacturer)
end

end

