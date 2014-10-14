class ChainOfStoresController < ApplicationController
  before_action :set_chain_of_store, only: [:show, :edit, :update, :destroy]

  # GET /chain_of_stores
  # GET /chain_of_stores.json
  def index
    @chain_of_stores = ChainOfStore.all
  end

  # GET /chain_of_stores/1
  # GET /chain_of_stores/1.json
  def show
  end

  # GET /chain_of_stores/new
  def new
    @chain_of_store = ChainOfStore.new
  end

  # GET /chain_of_stores/1/edit
  def edit
  end

  # POST /chain_of_stores
  # POST /chain_of_stores.json
  def create
    @chain_of_store = ChainOfStore.new(chain_of_store_params)

    respond_to do |format|
      if @chain_of_store.save
        format.html { redirect_to @chain_of_store, notice: 'Chain of store was successfully created.' }
        format.json { render :show, status: :created, location: @chain_of_store }
      else
        format.html { render :new }
        format.json { render json: @chain_of_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chain_of_stores/1
  # PATCH/PUT /chain_of_stores/1.json
  def update
    respond_to do |format|
      if @chain_of_store.update(chain_of_store_params)
        format.html { redirect_to @chain_of_store, notice: 'Chain of store was successfully updated.' }
        format.json { render :show, status: :ok, location: @chain_of_store }
      else
        format.html { render :edit }
        format.json { render json: @chain_of_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chain_of_stores/1
  # DELETE /chain_of_stores/1.json
  def destroy
    @chain_of_store.destroy
    respond_to do |format|
      format.html { redirect_to chain_of_stores_url, notice: 'Chain of store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chain_of_store
      @chain_of_store = ChainOfStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chain_of_store_params
      params.require(:chain_of_store).permit(:name, :slug, :type)
    end
end
