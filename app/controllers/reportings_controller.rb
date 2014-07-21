class ReportingsController < ApplicationController
  before_filter :check_logined

  def index
    @reportings = Reporting.new
    @companies = Company.all

    if params[:company_id] && params[:month]
      @reportings.company_id = params[:company_id]
      @reportings.month = params[:month].to_date
      @reportings.issues = Issue.includes(:activities).where(company_name: params[:company_id])
    end

  end

  def create
    redirect_to :action => 'index', :company_id => params[:reporting]["company_id"], :month => Date.civil(params[:reporting]["month(1i)"].to_i, params[:reporting]["month(2i)"].to_i, params[:reporting]["month(3i)"].to_i)
  end


  private

  def set_reporting
    @reportings = Reporting.new
    @reportings.month = Date.civil(params[:reporting]["month(1i)"].to_i, params[:reporting]["month(2i)"].to_i, params[:reporting]["month(3i)"].to_i)
  end

  def reporting_params
    params.require(:reporting).permit(:company_id, :month)
  end

end