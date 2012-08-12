class SubitemsController < ApplicationController
  # GET /subitems
  # GET /subitems.json
  def index
    @subitems = Subitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subitems }
    end
  end

  # GET /subitems/1
  # GET /subitems/1.json
  def show
    @subitem = Subitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subitem }
    end
  end

  # GET /subitems/new
  # GET /subitems/new.json
  def new
    @subitem = Subitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subitem }
    end
  end

  # GET /subitems/1/edit
  def edit
    @subitem = Subitem.find(params[:id])
  end

  # POST /subitems
  # POST /subitems.json
  def create
    @subitem = Subitem.new(params[:subitem])

    respond_to do |format|
      if @subitem.save
        format.html { redirect_to @subitem, notice: 'Subitem was successfully created.' }
        format.json { render json: @subitem, status: :created, location: @subitem }
      else
        format.html { render action: "new" }
        format.json { render json: @subitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subitems/1
  # PUT /subitems/1.json
  def update
    @subitem = Subitem.find(params[:id])

    respond_to do |format|
      if @subitem.update_attributes(params[:subitem])
        format.html { redirect_to @subitem, notice: 'Subitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subitems/1
  # DELETE /subitems/1.json
  def destroy
    @subitem = Subitem.find(params[:id])
    @subitem.destroy

    respond_to do |format|
      format.html { redirect_to subitems_url }
      format.json { head :no_content }
    end
  end
end
