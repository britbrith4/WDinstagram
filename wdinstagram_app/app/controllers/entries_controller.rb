class EntriesController < ApplicationController
  before_action :find_entry, only: [:show, :edit, :update, :destroy]

  def index
    @entries = Entry.all
  end


  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect @entry
    else
      render :new
    end
  end


  def new
    @entry = Entry.new

  end


  def edit
  end

  def show
  end

  def update
    @entry.update(entry_params)
    redirect_to @entry

  end

  def destroy
    @entry.destroy
    redirect_to @entry
  end

  private

    def artist_params
      params.require(:entry).permit(:entry, :author, :url)
    end

end
