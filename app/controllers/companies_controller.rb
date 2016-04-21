class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  autocomplete :company, :name, :full => true, :scopes => [:confirmed], :case_sensitive => false
  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.order(:name).confirmed.paginate(:page => params[:page], :per_page => 15)
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :description, :logotype, :url, :adress, :on_map, :phone, :employmentcontracts, :employments, :is_confirmed)
    end
end
