class AvaluosController < ApplicationController

  # GET /lotes/1/avaluo
  # GET /lotes/1/avaluo.json
  def show
    find_avaluo
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avaluo }
    end
  end

  # GET /lote/1/avaluo/new
  # GET /lote/1/avaluo/new.json
  def new
    lote = Lote.find(params[:lote_id])
    @avaluo = lote.build_avaluo

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avaluo }
    end
  end

  # GET /lote/1/avaluo/edit
  def edit
    find_avaluo
  end

  # POST /lote/1/avaluo
  # POST /lote/1/avaluo.json
  def create
    @lote = Lote.find(params[:lote_id])
    @avaluo = @lote.build_avaluo(params[:avaluo])
    respond_to do |format|
      if @avaluo.save
        format.html { redirect_to @avaluo.lote, notice: 'Avaluo was successfully created.' }
        format.json { render json: @avaluo, status: :created, location: @avaluo }
      else
        format.html { render action: "new" }
        format.json { render json: @avaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lote/1/avaluo
  # PUT /lote/1/avaluo.json
  def update
    find_avaluo
    respond_to do |format|
      if @avaluo.update_attributes(params[:avaluo])
        format.html { redirect_to @avaluo.lote, notice: 'Avaluo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @avaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lote/1/avaluo
  # DELETE /lote/1/avaluo.json
  def destroy
    find_avaluo
    @avaluo.destroy

    respond_to do |format|
      format.html { redirect_to @avaluo.lote }
      format.json { head :ok }
    end
  end

  protected

  def find_avaluo
    @avaluo = Avaluo.find_by_lote_id(params[:lote_id])
  end

end
