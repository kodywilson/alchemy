class SolventsController < ApplicationController
  before_action :set_solvent, only: [:show, :edit, :update, :destroy]

  # GET /solvents
  # GET /solvents.json
  def index
    @solvents = Solvent.all
  end

  # GET /solvents/1
  # GET /solvents/1.json
  def show
  end

  # GET /solvents/new
  def new
    @solvent = Solvent.new
  end

  # GET /solvents/1/edit
  def edit
  end

  # POST /solvents
  # POST /solvents.json
  def create
    @solvent = Solvent.new(solvent_params)

    respond_to do |format|
      if @solvent.save
        format.html { redirect_to @solvent, notice: 'Solvent was successfully created.' }
        format.json { render :show, status: :created, location: @solvent }
      else
        format.html { render :new }
        format.json { render json: @solvent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solvents/1
  # PATCH/PUT /solvents/1.json
  def update
    respond_to do |format|
      if @solvent.update(solvent_params)
        format.html { redirect_to @solvent, notice: 'Solvent was successfully updated.' }
        format.json { render :show, status: :ok, location: @solvent }
      else
        format.html { render :edit }
        format.json { render json: @solvent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solvents/1
  # DELETE /solvents/1.json
  def destroy
    @solvent.destroy
    respond_to do |format|
      format.html { redirect_to solvents_url, notice: 'Solvent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solvent
      @solvent = Solvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solvent_params
      params.require(:solvent).permit(:name, :picture, :level)
    end
end
