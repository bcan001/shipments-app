class ShipmentsController < ApplicationController
  # allows you to access methods from the view
  helper_method :sort_column, :sort_direction

  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new(shipment_params)
    if @shipment.save
      redirect_to shipments_path
    else
      render 'new'
    end
  end

  def index

    # show all shipments
    #@shipments = Shipment.all
    @shipments = Shipment.where(dispatched: false).order(sort_column + " " + sort_direction)

  end

  def show
    # show one shipment
  end

  def edit
    @shipment = Shipment.find(params[:id])
  end

  def update
    #binding.pry
    @shipment = Shipment.find(params[:id])

    @shipment.update(shipment_params)

    flash[:notice] = "The shipment has been updated"
    redirect_to shipments_path
  end

  def destroy
    @shipment = Shipment.find(params[:id])
    @shipment.destroy
    redirect_to shipments_path
  end

  def billing
    #@shipments = Shipment.all
    @shipments = Shipment.where({dispatched: true, archive: false}).order(sort_column + " " + sort_direction)
  end

  def archive
    @shipments = Shipment.where(archive: true)
  end




  private
  def shipment_params
    params.require(:shipment).permit!
  end

  def sort_column
    params[:sort] || "shipper"
  end

  def sort_direction
    params[:direction] || "asc"
  end


end
