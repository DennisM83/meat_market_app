class BeefCutsController < ApplicationController
  before_action :set_beef_cut, only: %i[ show edit update destroy ]

  # GET /beef_cuts or /beef_cuts.json
  def index
    @beef_cuts = BeefCut.all
  end

  # GET /beef_cuts/1 or /beef_cuts/1.json
  def show
  end

  # GET /beef_cuts/new
  def new
    @beef_cut = BeefCut.new
  end

  # GET /beef_cuts/1/edit
  def edit
  end

  # POST /beef_cuts or /beef_cuts.json
  def create
    @beef_cut = BeefCut.new(beef_cut_params)

    respond_to do |format|
      if @beef_cut.save
        format.html { redirect_to beef_cut_url(@beef_cut), notice: "Beef cut was successfully created." }
        format.json { render :show, status: :created, location: @beef_cut }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beef_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beef_cuts/1 or /beef_cuts/1.json
  def update
    respond_to do |format|
      if @beef_cut.update(beef_cut_params)
        format.html { redirect_to beef_cut_url(@beef_cut), notice: "Beef cut was successfully updated." }
        format.json { render :show, status: :ok, location: @beef_cut }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beef_cut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beef_cuts/1 or /beef_cuts/1.json
  def destroy
    @beef_cut.destroy

    respond_to do |format|
      format.html { redirect_to beef_cuts_url, notice: "Beef cut was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beef_cut
      @beef_cut = BeefCut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beef_cut_params
      params.require(:beef_cut).permit(:name, :muscle_anatomy, :description, :cut_type, :slicing_instructions)
    end
end
