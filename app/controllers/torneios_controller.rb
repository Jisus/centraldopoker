class TorneiosController < ApplicationController
  # GET /torneios
  # GET /torneios.json
  def index
    @torneios = Torneio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @torneios }
    end
  end

  # GET /torneios/1
  # GET /torneios/1.json
  def show
    @torneio = Torneio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @torneio }
    end
  end

  # GET /torneios/new
  # GET /torneios/new.json
  def new
    @torneio = Torneio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @torneio }
    end
  end

  # GET /torneios/1/edit
  def edit
    @torneio = Torneio.find(params[:id])
  end

  # POST /torneios
  # POST /torneios.json
  def create
    @torneio = Torneio.new(params[:torneio])

    respond_to do |format|
      if @torneio.save
        format.html { redirect_to @torneio, notice: 'Torneio was successfully created.' }
        format.json { render json: @torneio, status: :created, location: @torneio }
      else
        format.html { render action: "new" }
        format.json { render json: @torneio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /torneios/1
  # PUT /torneios/1.json
  def update
    @torneio = Torneio.find(params[:id])

    respond_to do |format|
      if @torneio.update_attributes(params[:torneio])
        format.html { redirect_to @torneio, notice: 'Torneio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @torneio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torneios/1
  # DELETE /torneios/1.json
  def destroy
    @torneio = Torneio.find(params[:id])
    @torneio.destroy

    respond_to do |format|
      format.html { redirect_to torneios_url }
      format.json { head :no_content }
    end
  end
end
