class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = Address.all
    respond_with(@addresses)
  end

  def show
    respond_with(@address)
  end

  def new
    @address = Address.new
    respond_with(@address)
  end

  def edit
  end

  def create
    @address = Address.new(address_params)
    flash[:notice] = 'Address was successfully created.' if @address.save
    respond_with(@address)
  end

  def update
    flash[:notice] = 'Address was successfully updated.' if @address.update(address_params)
    respond_with(@address)
  end

  def destroy
    @address.destroy
    respond_with(@address)
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:country, :state, :city, :pincode, :area, :street1, :street2, :latitude, :longitude, :store, :location)
    end
end
