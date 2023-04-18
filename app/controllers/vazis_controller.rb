class VazisController < ApplicationController
  before_action :set_project, only: %i[ index ]
  before_action :set_vazi, only: %i[ show edit update destroy ]

  # GET /vazis or /vazis.json
  def index
    @vazis = Vazi.where(project_id: @project.id)
    @vazi = @project.vazis.new
  end

  # GET /vazis/1 or /vazis/1.json
  def show
  end

  # GET /vazis/new
  def new
    @vazi = Vazi.new
  end

  # GET /vazis/1/edit
  def edit
  end

  # POST /vazis or /vazis.json
  def create
    @vazi = Vazi.new(vazi_params)

    respond_to do |format|
      if @vazi.save
        format.html { redirect_to project_vazis_path(@vazi.project), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @vazi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vazi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vazis/1 or /vazis/1.json
  def update
    respond_to do |format|
      if @vazi.update(vazi_params)
        format.html { redirect_to vazi_url(@vazi), notice: "Vazi was successfully updated." }
        format.json { render :show, status: :ok, location: @vazi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vazi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vazis/1 or /vazis/1.json
  def destroy
    @vazi.destroy

    respond_to do |format|
      format.html { redirect_to project_vazis_path(@vazi.project), notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_vazi
      @vazi = Vazi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vazi_params
      params.require(:vazi).permit(:name, :project_id)
    end
end
