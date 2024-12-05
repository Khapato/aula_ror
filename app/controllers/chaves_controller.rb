class ChavesController < ApplicationController
  before_action :set_chave, only: %i[ show edit update destroy ]

  # GET /chaves or /chaves.json
  def index
    @chaves = Chave.all
  end

  # GET /chaves/1 or /chaves/1.json
  def show
  end

  # GET /chaves/new
  def new
    @chave = Chave.new
  end

  # GET /chaves/1/edit
  def edit
  end

  # POST /chaves or /chaves.json
  def create
    @chave = Chave.new(chave_params)
    @chave.identificador = @chave.identificador.downcase.delete(" ");

    respond_to do |format|
      if @chave.save
        format.html { redirect_to @chave, notice: "
         was successfully created." }
        format.json { render :show, status: :created, location: @chave }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chaves/1 or /chaves/1.json
  def update
    respond_to do |format|
      if @chave.update(chave_params)
        format.html { redirect_to @chave, notice: "Chafe was successfully updated." }
        format.json { render :show, status: :ok, location: @chave }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chaves/1 or /chaves/1.json
  def destroy
    @chave.destroy!

    respond_to do |format|
      format.html { redirect_to chaves_path, status: :see_other, notice: "Chafe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chave
      @chave = Chave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chave_params
      params.require(:chave).permit(:identificador, :descricao)
    end
end
