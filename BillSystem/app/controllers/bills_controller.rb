class BillsController < ApplicationController
  def new
  	@client = Client.find params[:client_id]
  	@bill = Bill.new
  end

  def create
    @client = Client.find params[:client_id] # we get the incident from the route
    # we build the status update using a method of the relation
    @bill = @client.bills.build(bill_params)
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @client, notice: 'bill was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
 
  private
 
  def bill_params
    params.require(:bill).permit(:note)
  end

end
