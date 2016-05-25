class SousCategoriesController < ApplicationController
  before_action :set_sous_category, only: [:show, :edit, :update, :destroy]

  # GET /sous_categories
  # GET /sous_categories.json
  def index
    @sous_categories = SousCategory.paginate(page: params[:page], per_page:5)
  end

  # GET /sous_categories/1
  # GET /sous_categories/1.json
  def show
  end

  # GET /sous_categories/new
  def new
    @sous_category = SousCategory.new
  end

  # GET /sous_categories/1/edit
  def edit
  end

  # POST /sous_categories
  # POST /sous_categories.json
  def create
    @sous_category = SousCategory.new(sous_category_params)

    respond_to do |format|
      if @sous_category.save
        format.html { redirect_to @sous_category, notice: 'Sous category was successfully created.' }
        format.json { render :show, status: :created, location: @sous_category }
      else
        format.html { render :new }
        format.json { render json: @sous_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sous_categories/1
  # PATCH/PUT /sous_categories/1.json
  def update
    respond_to do |format|
      if @sous_category.update(sous_category_params)
        format.html { redirect_to @sous_category, notice: 'Sous category was successfully updated.' }
        format.json { render :show, status: :ok, location: @sous_category }
      else
        format.html { render :edit }
        format.json { render json: @sous_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sous_categories/1
  # DELETE /sous_categories/1.json
  def destroy
    @sous_category.destroy
    respond_to do |format|
      format.html { redirect_to sous_categories_url, notice: 'Sous category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sous_category
      @sous_category = SousCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sous_category_params
      params.require(:sous_category).permit(:name, :fichier_id, :category_id)
    end
end
