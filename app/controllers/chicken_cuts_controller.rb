class ChickenCutsController < ApplicationController
  before_action :set_chicken_cut, only: %i[ show edit update destroy ]

  # GET /chicken_cuts or /chicken_cuts.json
  def index
    @chicken_cuts = ChickenCut.all
  end

  # GET /chicken_cuts/1 or /chicken_cuts/1.json
  def show
  end

  # GET /chicken_cuts/new
  def new
    @chicken_cut = ChickenCut.new
  end

  # GET /chicken_cuts/1/edit
  def edit
  end

  # POST /chicken_cuts or /chicken_cuts.json
  def create
    @chicken_cut = ChickenCut.new(chicken_cut_params)

    respond_to do |format|
      if @chicken_cut.save
        format.html { redirect_to chicken_cut_url(@chicken_cut), notice: "Chicken cut was successfully created." }
        format.json { render :show, status: :created, location: @chicken_cut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chicken_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chicken_cuts/1 or /chicken_cuts/1.json
  def update
    respond_to do |format|
      if @chicken_cut.update(chicken_cut_params)
        format.html { redirect_to chicken_cut_url(@chicken_cut), notice: "Chicken cut was successfully updated." }
        format.json { render :show, status: :ok, location: @chicken_cut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chicken_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chicken_cuts/1 or /chicken_cuts/1.json
  def destroy
    @chicken_cut.destroy

    respond_to do |format|
      format.html { redirect_to chicken_cuts_url, notice: "Chicken cut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chicken_cut
      @chicken_cut = ChickenCut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chicken_cut_params
      params.require(:chicken_cut).permit(:name, :muscle_anatomy, :description, :cut_type, :slicing_instructions)
    end
end
