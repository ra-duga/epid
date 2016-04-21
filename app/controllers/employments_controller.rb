class EmploymentsController < ApplicationController
  before_action :set_employment, only: [:show, :update, :destroy]

  # GET /employments
  # GET /employments.json
  def index
    @employments = Employment.confirmed
  end

  # GET /employments/1
  # GET /employments/1.json
  def show
  end

  # GET /employments/new
  def new
    @employment = Employment.new
  end

  # POST /employments
  # POST /employments.json
  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to @employment, notice: 'Employment was successfully created.' }
        format.json { render :index, status: :created, location: @employment }
      else
        format.html { render :new }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_params
      params.require(:employment).permit(:first_name, :second_name, :third_name, :photo, :birth_date, :decription, :phone, :is_confirmed, :specialty_id)
    end
end
