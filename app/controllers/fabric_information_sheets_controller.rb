class FabricInformationSheetsController < ApplicationController
  # GET /fabric_information_sheets
  # GET /fabric_information_sheets.json
  def index
    @fabric_information_sheets = FabricInformationSheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fabric_information_sheets }
    end
  end

  # GET /fabric_information_sheets/1
  # GET /fabric_information_sheets/1.json
  def show
    @fabric_information_sheet = FabricInformationSheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fabric_information_sheet }
    end
  end

  # GET /fabric_information_sheets/new
  # GET /fabric_information_sheets/new.json
  def new
    @fabric_information_sheet = FabricInformationSheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fabric_information_sheet }
    end
  end

  # GET /fabric_information_sheets/1/edit
  def edit
    @fabric_information_sheet = FabricInformationSheet.find(params[:id])
  end

  # POST /fabric_information_sheets
  # POST /fabric_information_sheets.json
  def create
    @fabric_information_sheet = FabricInformationSheet.new(params[:fabric_information_sheet])

    respond_to do |format|
      if @fabric_information_sheet.save
        format.html { redirect_to @fabric_information_sheet, notice: 'Fabric information sheet was successfully created.' }
        format.json { render json: @fabric_information_sheet, status: :created, location: @fabric_information_sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @fabric_information_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fabric_information_sheets/1
  # PUT /fabric_information_sheets/1.json
  def update
    @fabric_information_sheet = FabricInformationSheet.find(params[:id])

    respond_to do |format|
      if @fabric_information_sheet.update_attributes(params[:fabric_information_sheet])
        format.html { redirect_to @fabric_information_sheet, notice: 'Fabric information sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fabric_information_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabric_information_sheets/1
  # DELETE /fabric_information_sheets/1.json
  def destroy
    @fabric_information_sheet = FabricInformationSheet.find(params[:id])
    @fabric_information_sheet.destroy

    respond_to do |format|
      format.html { redirect_to fabric_information_sheets_url }
      format.json { head :no_content }
    end
  end
end
