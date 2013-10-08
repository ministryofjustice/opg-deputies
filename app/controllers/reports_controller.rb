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
    @report = @client.reports.find(params[:id]).update_attributes(params.require(:client_report).permit(:name, :address, :telephone))
  end

end
