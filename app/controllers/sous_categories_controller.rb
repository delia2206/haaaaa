class SousCategoriesController < ApplicationController
  before_action :set_sous_categorie, only: [:show, :edit, :update, :destroy]

  # GET /sous_categories
  # GET /sous_categories.json
  def index
    @sous_categories = SousCategorie.all
  end

  # GET /sous_categories/1
  # GET /sous_categories/1.json
  def show
  end

  # GET /sous_categories/new
  def new
    @sous_categorie = SousCategorie.new
  end

  # GET /sous_categories/1/edit
  def edit
  end

  # POST /sous_categories
  # POST /sous_categories.json
  def create
    @sous_categorie = SousCategorie.new(sous_categorie_params)

    respond_to do |format|
      if @sous_categorie.save
        format.html { redirect_to @sous_categorie, notice: 'Sous categorie was successfully created.' }
        format.json { render :show, status: :created, location: @sous_categorie }
      else
        format.html { render :new }
        format.json { render json: @sous_categorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sous_categories/1
  # PATCH/PUT /sous_categories/1.json
  def update
    respond_to do |format|
      if @sous_categorie.update(sous_categorie_params)
        format.html { redirect_to @sous_categorie, notice: 'Sous categorie was successfully updated.' }
        format.json { render :show, status: :ok, location: @sous_categorie }
      else
        format.html { render :edit }
        format.json { render json: @sous_categorie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sous_categories/1
  # DELETE /sous_categories/1.json
  def destroy
    @sous_categorie.destroy
    respond_to do |format|
      format.html { redirect_to sous_categories_url, notice: 'Sous categorie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sous_categorie
      @sous_categorie = SousCategorie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sous_categorie_params
      params.require(:sous_categorie).permit(
        :nom,
        :categorie_id)
    end
end
