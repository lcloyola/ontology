class DescriptorsController < ApplicationController
  # GET /descriptors
  # GET /descriptors.json
  def value_by_descriptor
  if params[:id].present?
    @value = Descriptor.find(params[:id]).values
  end
  render :partial => "value-list", :locals => { :students => @value }
  end

  def index
    @descriptors = Descriptor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @descriptors }
    end
  end

  # GET /descriptors/1
  # GET /descriptors/1.json
  def show
    @descriptor = Descriptor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @descriptor }
    end
  end

  # GET /descriptors/new
  # GET /descriptors/new.json
  def new
    @descriptor = Descriptor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @descriptor }
    end
  end

  # GET /descriptors/1/edit
  def edit
    @descriptor = Descriptor.find(params[:id])
  end

  # POST /descriptors
  # POST /descriptors.json
  def create
    @descriptor = Descriptor.new(params[:descriptor])

    respond_to do |format|
      if @descriptor.save
        format.html { redirect_to @descriptor, notice: 'Descriptor was successfully created.' }
        format.json { render json: @descriptor, status: :created, location: @descriptor }
      else
        format.html { render action: "new" }
        format.json { render json: @descriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /descriptors/1
  # PUT /descriptors/1.json
  def update
    @descriptor = Descriptor.find(params[:id])

    respond_to do |format|
      if @descriptor.update_attributes(params[:descriptor])
        format.html { redirect_to @descriptor, notice: 'Descriptor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @descriptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descriptors/1
  # DELETE /descriptors/1.json
  def destroy
    @descriptor = Descriptor.find(params[:id])
    @descriptor.destroy

    respond_to do |format|
      format.html { redirect_to descriptors_url }
      format.json { head :no_content }
    end
  end
end

