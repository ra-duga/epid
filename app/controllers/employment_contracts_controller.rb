class EmploymentContractsController < ApplicationController
  before_action :set_employment_contract, only: [:show, :edit, :update, :destroy]

  # GET /employment_contracts
  # GET /employment_contracts.json
  def index
    @employment_contracts = EmploymentContract.where(["company_id = :u", { u: params[:company_id] }])
  end

  # GET /employment_contracts/1
  # GET /employment_contracts/1.json
  def show
  end

  # GET /employment_contracts/new
  def new
    @company = Company.find(params[:company_id])
    @employment_contract = EmploymentContract.new
  end

  # GET /employment_contracts/1/edit
  def edit
  end

  # POST /employment_contracts
  # POST /employment_contracts.json
  def create
    @employment_contract = EmploymentContract.new(employment_contract_params)
    @employment_contract.company_id = params[:company_id]
    @company = Company.find(params[:company_id])

    respond_to do |format|
      if @employment_contract.save
        format.html { redirect_to @company, notice: 'Employment contract was successfully created.' }
        format.json { render :show, status: :created, location: @employment_contract }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_contracts/1
  # PATCH/PUT /employment_contracts/1.json
  def update
    respond_to do |format|
      if @employment_contract.update(employment_contract_params)
        format.html { redirect_to @company_employment_contract, notice: 'Employment contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_contract }
      else
        format.html { render :edit }
        format.json { render json: @company_employment_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_contracts/1
  # DELETE /employment_contracts/1.json
  def destroy
    @employment_contract.destroy
    respond_to do |format|
      format.html { redirect_to employment_contracts_url, notice: 'Employment contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_contract
      @employment_contract = EmploymentContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_contract_params
      params.require(:employment_contract).permit(:date_start, :date_and, :company, :employment_id)
    end
end
