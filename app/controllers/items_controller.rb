class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(name: params[:name], price: params[:price], quantity: params[:quantity], brand: params[:brand])
    redirect_to items_path
  end

  def destroy
    @Item = Item.find(params[:id])
    @Item.destroy
    redirect_to items_path
  end

  def create
    @item = Item.create(name: params[:name], price: params[:price], quantity: params[:quantity], brand: params[:brand])

    if @item.save
      redirect_to items_path
    end
  end
end
