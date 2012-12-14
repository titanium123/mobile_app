class NotesController < ApplicationController
  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all

  
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])

   
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new

   
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(params[:note])

   # respond_to do |format|
      if @note.save
         redirect_to @note,notice: 'Note was successfully created.'
    #    format.html { redirect_to @note, notice: 'Note was successfully created.' }
    #    format.json { render json: @note, status: :created, location: @note }
      else
         render "new"
    #    format.html { render action: "new" }
     #   format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])

    #respond_to do |format|
      if @note.update_attributes(params[:note])
          redirect_to @note,notice: 'Note was successfully updated.'
    #    format.html { redirect_to @note, notice: 'Note was successfully updated.' }
     #   format.json { head :no_content }
      else
         render "new"
    #    format.html { render action: "edit" }
    #    format.json { render json: @note.errors, status: :unprocessable_entity }
      end
  #  end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

   #respond_to do |format|
   #   format.html { redirect_to notes_url }
   #   format.json { head :no_content }
   # end
  end
end
