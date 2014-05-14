class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_filter :check_logined
  
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all.order(:name)
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @company = Company.find(params[:company_id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @company = Company.find(params[:company_id])
    @customer = @company.customers.create(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @company, notice: "#{@customer.name} was successfully created." }
        format.json { render action: 'show', status: :created, location: @customer }
        format.js  #create.js.erb
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @company = Customer.find(params[:id]).company_id
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to company_path(@company) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:title, :name, :direct_number, :email, :company_id, :location_id, :main_contact)
    end
end
