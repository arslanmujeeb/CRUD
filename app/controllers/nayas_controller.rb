class NayasController < ApplicationController

before_action :find_naya, only: [:show, :edit, :update, :destroy]

  def index
    @nayas = Naya.all.order("created_at DESC")
    #render ('show')
  end

  def show
    @naya = Naya.find(params[:id])
  end


  def new
    @naya = Naya.new
  end


  def create
    @naya = Naya.new(naya_params)

    if @naya.save
      redirect_to @naya
    else
      render 'new'

    end
  end

  def edit
    @post= Naya.find(params[:id])
  end


  def update
    if @naya.update(naya_params)
      redirect_to @naya
    else
      render 'edit'
    end
  end

def destroy
  @naya.destroy
  redirect_to root_path
end

private

def find_naya
  @naya = Naya.find(params[:id])
end

  def naya_params
  params.require(:naya).permit(:Name,:Type)
  end

end
