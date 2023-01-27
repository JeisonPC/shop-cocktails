class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[ show edit update destroy ]

  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # GET /cocktails/1/edit
  def edit
  end

  # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: "Cocktail was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cocktails/1
  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: "Cocktail was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /cocktails/1
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: "Cocktail was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :category, :ingredients, :recipe, :price)
    end
end
