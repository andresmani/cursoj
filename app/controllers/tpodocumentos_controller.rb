class TpodocumentosController < ApplicationController
  # GET /tpodocumentos
  # GET /tpodocumentos.json
  def index
    @tpodocumentos = Tpodocumento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tpodocumentos }
    end
  end

  # GET /tpodocumentos/1
  # GET /tpodocumentos/1.json
  def show
    @tpodocumento = Tpodocumento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tpodocumento }
    end
  end

  # GET /tpodocumentos/new
  # GET /tpodocumentos/new.json
  def new
    @tpodocumento = Tpodocumento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tpodocumento }
    end
  end

  # GET /tpodocumentos/1/edit
  def edit
    @tpodocumento = Tpodocumento.find(params[:id])
  end

  # POST /tpodocumentos
  # POST /tpodocumentos.json
  def create
    @tpodocumento = Tpodocumento.new(params[:tpodocumento])

    respond_to do |format|
      if @tpodocumento.save
        format.html { redirect_to @tpodocumento, notice: 'Tpodocumento was successfully created.' }
        format.json { render json: @tpodocumento, status: :created, location: @tpodocumento }
      else
        format.html { render action: "new" }
        format.json { render json: @tpodocumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tpodocumentos/1
  # PUT /tpodocumentos/1.json
  def update
    @tpodocumento = Tpodocumento.find(params[:id])

    respond_to do |format|
      if @tpodocumento.update_attributes(params[:tpodocumento])
        format.html { redirect_to @tpodocumento, notice: 'Tpodocumento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tpodocumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tpodocumentos/1
  # DELETE /tpodocumentos/1.json
  def destroy
    @tpodocumento = Tpodocumento.find(params[:id])
    @tpodocumento.destroy

    respond_to do |format|
      format.html { redirect_to tpodocumentos_url }
      format.json { head :no_content }
    end
  end
end
