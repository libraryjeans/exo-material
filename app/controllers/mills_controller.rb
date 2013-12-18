class MillsController < ApplicationController
  # GET /mills
  # GET /mills.json
  def index
    @mills = Mill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mills }
    end
  end

  # GET /mills/1
  # GET /mills/1.json
  def show
    @mill = Mill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mill }
    end
  end

  # GET /mills/new
  # GET /mills/new.json
  def new
    @mill = Mill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mill }
    end
  end

  # GET /mills/1/edit
  def edit
    @mill = Mill.find(params[:id])
  end

  # POST /mills
  # POST /mills.json
  def create
    @mill = Mill.new(params[:mill])

    respond_to do |format|
      if @mill.save
        format.html { redirect_to @mill, notice: 'Mill was successfully created.' }
        format.json { render json: @mill, status: :created, location: @mill }
      else
        format.html { render action: "new" }
        format.json { render json: @mill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mills/1
  # PUT /mills/1.json
  def update
    @mill = Mill.find(params[:id])

    respond_to do |format|
      if @mill.update_attributes(params[:mill])
        format.html { redirect_to @mill, notice: 'Mill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mills/1
  # DELETE /mills/1.json
  def destroy
    @mill = Mill.find(params[:id])
    @mill.destroy

    respond_to do |format|
      format.html { redirect_to mills_url }
      format.json { head :no_content }
    end
  end
end
