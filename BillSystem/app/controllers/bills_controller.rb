class BillsController < ApplicationController

  helper_method  :howMuchHaveIPay

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

  def destroy
  @bill = Bill.find params[:id]
 
  respond_to do |format|
    if @bill.destroy
      format.html { redirect_to @bill.client,
                    notice: 'Bill was successfully deleted.'}
    else
      format.html { redirect_to @bill.client,
                    alert: 'Could not delete this bill'}
    end
  end
end

def howMuchHaveIPay
	tarif = @bill.client.hourTariff
	total = @bill.totalHour * tarif
	return total
end
 
  private
 
  def bill_params
    params.require(:bill).permit(:note, :Data, :totalEuro, :totalHour)
  end

end
