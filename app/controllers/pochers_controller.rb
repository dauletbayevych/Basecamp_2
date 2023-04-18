class PochersController < ApplicationController
  before_action :set_pocher, only: %i[ show edit update destroy ]

  # GET /pochers or /pochers.json
  def index
    @pochers = Pocher.all
  end

  # GET /pochers/1 or /pochers/1.json
  def show
  end

  # GET /pochers/new
  def new
    @pocher = Pocher.new
  end

  # GET /pochers/1/edit
  def edit
  end

  # POST /pochers or /pochers.json
  def create
    @pocher = Pocher.new(pocher_params)

    respond_to do |format|
      if @pocher.save
        format.html { redirect_to project_poch_path(@pocher.poch.project, @pocher.poch), notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @pocher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pocher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pochers/1 or /pochers/1.json
  def update
    respond_to do |format|
      if @pocher.update(pocher_params)
        format.html { redirect_to pocher_url(@pocher), notice: "Pocher was successfully updated." }
        format.json { render :show, status: :ok, location: @pocher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pocher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pochers/1 or /pochers/1.json
  def destroy
    @pocher.destroy

    respond_to do |format|
      format.html { redirect_to project_poch_path(@pocher.poch.project, @pocher.poch), notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocher
      @pocher = Pocher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pocher_params
      params.require(:pocher).permit(:title, :poch_id)
    end
end
