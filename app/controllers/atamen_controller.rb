class AtamenController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_ataman, only: %i[ show edit update destroy ]

  # GET /atamen or /atamen.json
  def index
    @atamen = Ataman.where(project_id: @project.id)
    @ataman = @project.atamen.new
  end

  # GET /atamen/1 or /atamen/1.json
  def show
  end

  # GET /atamen/new
  def new
    @ataman = Ataman.new
  end

  # GET /atamen/1/edit
  def edit
  end

  # POST /atamen or /atamen.json
  def create
    @ataman = Ataman.new(ataman_params)

    respond_to do |format|
      if @ataman.save
        format.html { redirect_to project_atamen_path(@ataman.project), notice: "Attachment was successfully created." }
        format.json { render :show, status: :created, location: @ataman }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ataman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atamen/1 or /atamen/1.json
  def update
    respond_to do |format|
      if @ataman.update(ataman_params)
        format.html { redirect_to ataman_url(@ataman), notice: "Ataman was successfully updated." }
        format.json { render :show, status: :ok, location: @ataman }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ataman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atamen/1 or /atamen/1.json
  def destroy
    @ataman.destroy

    respond_to do |format|
      format.html { redirect_to project_atamen_path(@ataman.project), notice: "Attachment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_ataman
      @ataman = Ataman.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ataman_params
      params.require(:ataman).permit(:project_id, :atr)
    end
end
