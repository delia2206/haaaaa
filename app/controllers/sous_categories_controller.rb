class SousCategoriesController < ApplicationController
  before_action :set_sous_category, only: [:show, :edit, :update, :destroy]

  # GET /sous_categories
  def index
    @sous_categories = SousCategory.paginate(page: params[:page], per_page:5)
  end

  # GET /sous_categories/1
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
  def create
    @sous_category = SousCategory.new(sous_category_params)

    respond_to do |format|
      if @sous_category.save
        format.html { redirect_to @sous_category, notice: 'Sous category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /sous_categories/1
  def update
    respond_to do |format|
      if @sous_category.update(sous_category_params)
        format.html { redirect_to @sous_category, notice: 'Sous category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /sous_categories/1
  def destroy
    @sous_category.destroy
    respond_to do |format|
      format.html { redirect_to sous_categories_url, notice: 'Sous category was successfully destroyed.' }
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
