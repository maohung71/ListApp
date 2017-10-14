class ItemsController < ApplicationController

  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index

    if params[:category].blank?
      @items = Item.all.order("created_at DESC")
    else
      @category_id = Category.find_by(subject: params[:category]).id
      @items = Item.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)

    # @hobby = Hobby.find(params[:hobby_id])
    # @item = @hobby.items.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'item was successfully created.' }

      else
        @categories = Category.all
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render 'edit'
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def item_params
    params.require(:items).permit(:name, :description, :category_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end


end
