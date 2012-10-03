class CalendarEntriesController < ApplicationController
  # GET /calendar_entries
  # GET /calendar_entries.json
  def index
    @calendar_entries = CalendarEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calendar_entries }
    end
  end

  # GET /calendar_entries/1
  # GET /calendar_entries/1.json
  def show
    @calendar_entry = CalendarEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calendar_entry }
    end
  end

  # GET /calendar_entries/new
  # GET /calendar_entries/new.json
  def new
    @calendar_entry = CalendarEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calendar_entry }
    end
  end

  # GET /calendar_entries/1/edit
  def edit
    @calendar_entry = CalendarEntry.find(params[:id])
  end

  # POST /calendar_entries
  # POST /calendar_entries.json
  def create
    @calendar_entry = CalendarEntry.new(params[:calendar_entry])

    respond_to do |format|
      if @calendar_entry.save
        format.html { redirect_to @calendar_entry, notice: 'Calendar entry was successfully created.' }
        format.json { render json: @calendar_entry, status: :created, location: @calendar_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @calendar_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calendar_entries/1
  # PUT /calendar_entries/1.json
  def update
    @calendar_entry = CalendarEntry.find(params[:id])

    respond_to do |format|
      if @calendar_entry.update_attributes(params[:calendar_entry])
        format.html { redirect_to @calendar_entry, notice: 'Calendar entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calendar_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_entries/1
  # DELETE /calendar_entries/1.json
  def destroy
    @calendar_entry = CalendarEntry.find(params[:id])
    @calendar_entry.destroy

    respond_to do |format|
      format.html { redirect_to calendar_entries_url }
      format.json { head :no_content }
    end
  end
end
