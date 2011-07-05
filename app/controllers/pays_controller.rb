class PaysController < ApplicationController
  # GET /pays
  # GET /pays.json
  def index
    @pays = Pay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pays }
    end
  end

  # GET /pays/1
  # GET /pays/1.json
  def show
    @pay = Pay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pay }
    end
  end

  # GET /pays/new
  # GET /pays/new.json
  def new
    @pay = Pay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pay }
    end
  end

  # GET /pays/1/edit
  def edit
    @pay = Pay.find(params[:id])
  end

  # POST /pays
  # POST /pays.json
  def create
    @pay = Pay.new(params[:pay])

    respond_to do |format|
      if @pay.save
        format.html { redirect_to @pay, notice: 'Pay was successfully created.' }
        format.json { render json: @pay, status: :created, location: @pay }
      else
        format.html { render action: "new" }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pays/1
  # PUT /pays/1.json
  def update
    @pay = Pay.find(params[:id])

    respond_to do |format|
      if @pay.update_attributes(params[:pay])
        format.html { redirect_to @pay, notice: 'Pay was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1
  # DELETE /pays/1.json
  def destroy
    @pay = Pay.find(params[:id])
    @pay.destroy

    respond_to do |format|
      format.html { redirect_to pays_url }
      format.json { head :ok }
    end
  end
end
