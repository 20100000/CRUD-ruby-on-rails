class AnotacaosController < ApplicationController
  before_action :set_anotacao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!


  # GET /anotacaos
  # GET /anotacaos.json
  def index
    if params[:busca]
      @anotacaos = Anotacao.buscar(params[:busca])
    else
      @anotacaos = Anotacao.all.paginate(:page => params[:page], :per_page => 5)
    end

  end

  # GET /anotacaos/1
  # GET /anotacaos/1.json
  def show
  end

  # GET /anotacaos/new
  def new
    @anotacao = Anotacao.new
    @amigoss = Amigo.all

  end

  # GET /anotacaos/1/edit
  def edit
    @amigoss = Amigo.all
  end

  # POST /anotacaos
  # POST /anotacaos.json
  def create
    @anotacao = Anotacao.new(anotacao_params)

    respond_to do |format|
      if @anotacao.save
        format.html { redirect_to @anotacao, notice: 'Anotacao was successfully created.' }
        format.json { render :show, status: :created, location: @anotacao }
      else
        format.html { render :new }
        format.json { render json: @anotacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anotacaos/1
  # PATCH/PUT /anotacaos/1.json
  def update
    respond_to do |format|
      if @anotacao.update(anotacao_params)
        format.html { redirect_to @anotacao, notice: 'Anotacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @anotacao }
      else
        format.html { render :edit }
        format.json { render json: @anotacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anotacaos/1
  # DELETE /anotacaos/1.json
  def destroy
    @anotacao.destroy
    respond_to do |format|
      format.html { redirect_to anotacaos_url, notice: 'Anotacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anotacao
      @anotacao = Anotacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anotacao_params
      params.require(:anotacao).permit(:body, :amigo_id)
    end
end
