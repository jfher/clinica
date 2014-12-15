class ValorsController < ApplicationController
  before_action :set_valor, only: [:show, :edit, :update, :destroy]

  # GET /valors
  # GET /valors.json
  def index

    @valors = Valor.all
    
  end

  # GET /valors/1
  # GET /valors/1.json
  def show
  end

  # GET /valors/new
  def new
    @valor = Valor.new
  end

  # GET /valors/1/edit
  def edit
  end

  # POST /valors
  # POST /valors.json
  def create
    @valor = Valor.new(valor_params)

    respond_to do |format|
      if @valor.save
        format.html { redirect_to @valor, notice: 'Valor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @valor }
      else
        format.html { render action: 'new' }
        format.json { render json: @valor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valors/1
  # PATCH/PUT /valors/1.json
  def update
    respond_to do |format|
      if @valor.update(valor_params)
        format.html { redirect_to @valor, notice: 'Valor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @valor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valors/1
  # DELETE /valors/1.json
  def destroy
    @valor.destroy
    respond_to do |format|
      format.html { redirect_to valors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor
      @valor = Valor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valor_params
      params.require(:valor).permit(:nombre, :rangoMax, :rangoMin, :analise_id, :value)
    end
end
