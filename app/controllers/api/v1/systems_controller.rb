class Api::V1::SystemsController < ApplicationController

  #before_action :set_system, only: %i[] #show update destroy

  def index
    @systems = System.all
    render json: @systems
  end

private

def set_system
  @system = System.find(params[:id])
end

def system_params
  params.require(:system).permit(:name, :manufacturer)
end

end

