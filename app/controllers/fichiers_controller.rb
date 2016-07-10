class FichiersController < ApplicationController
  before_action :set_fichier, only: [:show, :edit, :update, :destroy]

  # GET /fichiers
  # GET /fichiers.json
  def index
    @fichiers = Fichier.paginate(page: params[:page], per_page:5)
  end

  # GET /fichiers/1
  # GET /fichiers/1.json
  def show
  end

  # GET /fichiers/new
  def new
    @fichier = Fichier.new
  end

  # GET /fichiers/1/edit
  def edit
  end

  # POST /fichiers
  def create
    #@fichier = Fichier.new(fichier_params)
    @fichier = current_user.fichiers.build(fichier_params)

    respond_to do |format|
      if @fichier.save
        format.html { redirect_to @fichier, notice: 'Fichier was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /fichiers/1
  def update
    respond_to do |format|
      if @fichier.update(fichier_params)
        format.html { redirect_to @fichier, notice: 'Fichier was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /fichiers/1
  def destroy
    @fichier.destroy
    respond_to do |format|
      format.html { redirect_to fichiers_url, notice: 'Fichier was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fichier
      @fichier = Fichier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fichier_params
      params.require(:fichier).permit(
        :name,
        :file,
        :category_id,
        sous_category_ids: []
        )
    end
end
