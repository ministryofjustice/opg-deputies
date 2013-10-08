class ClientsController < ApplicationController

  def new
  end

  def create
    @client = Client.create(name: 'John Smith', address: '63 Avenue Road', telephone: '020 1234 5678')
    redirect_to edit_client_path(@client)
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params.require(:client).permit(:name, :address, :telephone))
    @client.save
    redirect_to client_path(@client)
  end

  def show
    @client = Client.find(params[:id])
  end

end
