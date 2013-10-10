class ReportsController < ApplicationController

  def new
    @client = Client.find(params[:client_id])
    @report = @client.reports.last || @client.reports.create(period_start: Date.today, period_end: Date.today + 1.year)
    redirect_to edit_client_report_path(@report, client_id: @client)
  end

  def edit
    @client = Client.find(params[:client_id])
    @report = @client.reports.find(params[:id])
  end

  def update
    @client = Client.find(params[:client_id])
    attributes = [:period_start,
      :period_end,
      :decisions,
      :client_involvement,
      :assets_list,
      :capital_expenditure,
      :property_maintenance,
      :investments_purchased,
      :deputy_expenses,
      :gifts,
      :further_details]
    @report = @client.reports.find(params[:id]).update_attributes(params.require(:report).permit(attributes))
    redirect_to client_path(@client)
  end

end
