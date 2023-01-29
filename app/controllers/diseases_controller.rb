  # como service
class DiseasesController < ApplicationController
  before_action :set_disease, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only:[:edit,:create]
  

  # GET /diseases or /diseases.json
  def index
    @diseases = Disease.all
  end

  # GET /diseases/1 or /diseases/1.json
  def show
    @diagnostics = Diagnostics.paginate(:page => params[:page], :per_page => 12)
    
  end



  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
    @diagnostics = Diagnostics.all
  end

  # POST /diseases or /diseases.json
  def create    
    @disease = current_user.diseases.new(disease_params)
    @disease.diagnostics = params[:diagnostics]
    respond_to do |format|
      if @disease.save
        format.html { redirect_to disease_url(@disease), notice: "Disease was successfully created." }
        format.json { render :show, status: :created, location: @disease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diseases/1 or /diseases/1.json
  def update
    respond_to do |format|
      if @disease.update(disease_params)
        format.html { redirect_to disease_url(@disease), notice: "Disease was successfully updated." }
        format.json { render :show, status: :ok, location: @disease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diseases/1 or /diseases/1.json
  def destroy
    @disease.destroy

    respond_to do |format|
      format.html { redirect_to diseases_url, notice: "Disease was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disease_params
      params.require(:disease).permit(:user_id)
    end
end
