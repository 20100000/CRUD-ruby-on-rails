class FilhosController < ApplicationController
  before_action :set_filho, only: [:show, :edit, :update, :destroy]

  # GET /filhos
  # GET /filhos.json
  def index
    @filhos = Filho.all
  end

  # GET /filhos/1
  # GET /filhos/1.json
  def show
  end

  # GET /filhos/new
  def new
    @filho = Filho.new
  end

  # GET /filhos/1/edit
  def edit
  end

  # POST /filhos
  # POST /filhos.json
  def create
    @filho = Filho.new(filho_params)

    respond_to do |format|
      if @filho.save
        format.html { redirect_to @filho, notice: 'Filho was successfully created.' }
        format.json { render :show, status: :created, location: @filho }
      else
        format.html { render :new }
        format.json { render json: @filho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filhos/1
  # PATCH/PUT /filhos/1.json
  def update
    respond_to do |format|
      if @filho.update(filho_params)
        format.html { redirect_to @filho, notice: 'Filho was successfully updated.' }
        format.json { render :show, status: :ok, location: @filho }
      else
        format.html { render :edit }
        format.json { render json: @filho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filhos/1
  # DELETE /filhos/1.json
  def destroy
    @filho.destroy
    respond_to do |format|
      format.html { redirect_to filhos_url, notice: 'Filho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filho
      @filho = Filho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filho_params
      params.require(:filho).permit(:name, :sexo, :pai_id)
    end
end
