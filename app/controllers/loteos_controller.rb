class LoteosController < ApplicationController
  # GET /loteos
  # GET /loteos.json
  def index
    @loteos = Loteo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @loteos }
    end
  end

  # GET /loteos/1
  # GET /loteos/1.json
  def show
    @loteo = Loteo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loteo }
    end
  end

  # GET /loteos/new
  # GET /loteos/new.json
  def new
    @loteo = Loteo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loteo }
    end
  end

  # GET /loteos/1/edit
  def edit
    @loteo = Loteo.find(params[:id])
  end

  # POST /loteos
  # POST /loteos.json
  def create
    @loteo = Loteo.new(params[:loteo])

    respond_to do |format|
      if @loteo.save
        format.html { redirect_to @loteo, notice: 'Loteo was successfully created.' }
        format.json { render json: @loteo, status: :created, location: @loteo }
      else
        format.html { render action: "new" }
        format.json { render json: @loteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /loteos/1
  # PUT /loteos/1.json
  def update
    @loteo = Loteo.find(params[:id])

    respond_to do |format|
      if @loteo.update_attributes(params[:loteo])
        format.html { redirect_to @loteo, notice: 'Loteo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @loteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loteos/1
  # DELETE /loteos/1.json
  def destroy
    @loteo = Loteo.find(params[:id])
    @loteo.destroy

    respond_to do |format|
      format.html { redirect_to loteos_url }
      format.json { head :ok }
    end
  end
end
