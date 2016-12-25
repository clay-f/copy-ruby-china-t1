class NotesController < ApplicationController

before_action :set_note, only: [:show, :edit, :update, :destroy]
before_action :set_notes, only: [:edit, :new, :show, :index]

  def index
    @notes = Note.all.order("created_at DESC").paginate(page: params[:page], :per_page => 7)
  end

  def new
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to @note
    else
      render 'new'
    end
  end

  def show

  end

  def edit
  end

  def update

  end

  def destroy
    if @note.destroy
      redirect_to notes_path
    end
  end


  private

    def note_params
      params[:note].permit(:text)
    end

    def set_note
      @note = Note.find(params[:id])
    end

    def set_notes
      @notes = Note.all.order("created_at DESC")
    end

end
