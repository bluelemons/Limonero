class MatrimoniosController < ApplicationController
  # GET /matrimonios
  # GET /matrimonios.json
  def index
    @matrimonios = Matrimonio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matrimonios }
    end
  end

  # GET /matrimonios/1
  # GET /matrimonios/1.json
  def show
    @matrimonio = Matrimonio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matrimonio }
    end
  end

  # GET /matrimonios/new
  # GET /matrimonios/new.json
  def new
    @matrimonio = Matrimonio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matrimonio }
    end
  end

  # GET /matrimonios/1/edit
  def edit
    @matrimonio = Matrimonio.find(params[:id])
  end

  # POST /matrimonios
  # POST /matrimonios.json
  def create
    @matrimonio = Matrimonio.new(params[:matrimonio])

    respond_to do |format|
      if @matrimonio.save
        format.html { redirect_to @matrimonio, notice: 'Matrimonio was successfully created.' }
        format.json { render json: @matrimonio, status: :created, location: @matrimonio }
      else
        format.html { render action: "new" }
        format.json { render json: @matrimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matrimonios/1
  # PUT /matrimonios/1.json
  def update
    @matrimonio = Matrimonio.find(params[:id])

    respond_to do |format|
      if @matrimonio.update_attributes(params[:matrimonio])
        format.html { redirect_to @matrimonio, notice: 'Matrimonio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @matrimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrimonios/1
  # DELETE /matrimonios/1.json
  def destroy
    @matrimonio = Matrimonio.find(params[:id])
    @matrimonio.destroy

    respond_to do |format|
      format.html { redirect_to matrimonios_url }
      format.json { head :ok }
    end
  end
end
