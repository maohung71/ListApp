class ListsController < ApplicationController

  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all.order("created_at DESC")
  end

  def show
    # @items = @list.items
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_path, notice: 'list was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render 'edit'
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :description)
  end

  def find_list
    @list = List.find(params[:id])
  end


end
