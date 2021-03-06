class AnalisesController < ApplicationController
  before_action :set_analise, only: [:show, :edit, :update, :destroy]

  # GET /analises
  # GET /analises.json
  def index
    if current_user != NIL
      if current_user.rol == "bioquimica"
      @analise = Analisis.all
      @values = Valor.all
     else 
      redirect_to '/'
       end
  else
    redirect_to '/'
  end
  end

  # GET /analises/1
  # GET /analises/1.json
  def show
     if current_user.rol != "bioquimica"
      redirect_to '/'
    end
  end

   def resultadosAnalisis
   if current_user != NIL
    @analise = Analisis.all
   else
    redirect_to '/'
   end
  end
  # GET /analises/new
  def new
    if current_user.rol == "bioquimica"
    @analise = Analisis.new
  else
    redirect_to '/'
    end
  end

  # GET /analises/1/edit
  def edit
    if current_user.rol != "bioquimica"
      redirect_to '/'
    end
  end

  # POST /analises
  # POST /analises.json
  def create
    @analise = Analisis.new(analise_params)

    respond_to do |format|
      if @analise.save
        format.html { redirect_to @analise, notice: 'Analisis was successfully created.' }
        format.json { render action: 'show', status: :created, location: @analise }
      else
        format.html { render action: 'new' }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analises/1
  # PATCH/PUT /analises/1.json
  def update
    respond_to do |format|
      if @analise.update(analise_params)
        format.html { redirect_to @analise, notice: 'Analisis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analises/1
  # DELETE /analises/1.json
  def destroy
    @analise.destroy
    respond_to do |format|
      format.html { redirect_to analises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analise
      @analise = Analisis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analise_params
      params.require(:analisis).permit(:nombre, :user_id)
    end
end
