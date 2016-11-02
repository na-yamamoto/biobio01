class BiotopsController < ApplicationController
  before_action :set_biotop, only: [:show, :edit, :update, :destroy]

  # GET /biotops
  # GET /biotops.json
  def index
    @biotops = Biotop.all
  end

  # GET /biotops/1
  # GET /biotops/1.json
  def show
  end

  # GET /biotops/new
  def new
    @biotop = Biotop.new
  end

  # GET /biotops/1/edit
  def edit
  end

  # POST /biotops
  # POST /biotops.json
  def create
    @biotop = Biotop.new(biotop_params)

    respond_to do |format|
      if @biotop.save
        format.html { redirect_to @biotop, notice: 'Biotop was successfully created.' }
        format.json { render :show, status: :created, location: @biotop }
      else
        format.html { render :new }
        format.json { render json: @biotop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biotops/1
  # PATCH/PUT /biotops/1.json
  def update
    respond_to do |format|
      if @biotop.update(biotop_params)
        format.html { redirect_to @biotop, notice: 'Biotop was successfully updated.' }
        format.json { render :show, status: :ok, location: @biotop }
      else
        format.html { render :edit }
        format.json { render json: @biotop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biotops/1
  # DELETE /biotops/1.json
  def destroy
    @biotop.destroy
    respond_to do |format|
      format.html { redirect_to biotops_url, notice: 'Biotop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biotop
      @biotop = Biotop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biotop_params
      params.require(:biotop).permit(:event_id, :tag_id, :description)
    end
end
