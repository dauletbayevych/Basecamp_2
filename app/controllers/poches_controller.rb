class PochesController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_poch, only: %i[ show edit update destroy ]

  # GET /poches or /poches.json
  def index
    @poches = Poch.where(project_id: @project.id)
  end

  # GET /poches/1 or /poches/1.json
  def show

    @pocher = @poch.pochers.new
    @pochers = Pocher.where(poch_id: @poch.id)

  end

  # GET /poches/new
  def new
    @poch = @project.poches.new
  end

  # GET /poches/1/edit
  def edit
  end

  # POST /poches or /poches.json
  def create
    @poch = Poch.new(poch_params)

    respond_to do |format|
      if @poch.save
        format.html { redirect_to project_poch_url(@poch.project,@poch), notice: "Message Board was successfully created." }
        format.json { render :show, status: :created, location: @poch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poches/1 or /poches/1.json
  def update
    respond_to do |format|
      if @poch.update(poch_params)
        format.html { redirect_to project_poch_url(@poch.project,@poch), notice: "Message Board was successfully updated." }
        format.json { render :show, status: :ok, location: @poch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poches/1 or /poches/1.json
  def destroy
    @poch.destroy

    respond_to do |format|
      format.html { redirect_to project_poches_url(@poch.project), notice: "Message Board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_poch
      @poch = Poch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poch_params
      params.require(:poch).permit(:name, :project_id)
    end
end
