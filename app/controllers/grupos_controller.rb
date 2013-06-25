class GruposController < ApplicationController
 
  def index
    @grupos = Grupo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grupos }
    end
  end

  def show
    @grupo = Grupo.find(params[:id])
  end

  def new
    @grupo = Grupo.new
  end

  def edit
    @grupo = Grupo.find(params[:id])
  end

  def create
    @grupo = Grupo.new(params[:grupo])
    render :action => :new unless @grupo.save
    @grupo = Grupo.all  
  end

  def update
    @grupo = Grupo.find(params[:id])
    render :action => :edit unless @grupo.update_attributes(params[:grupo])
  end

  def destroy
    @grupo = Grupo.find(params[:id])
    @grupo.destroy
  end

end
