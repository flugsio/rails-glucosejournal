class EntriesController < ApplicationController
  def index
    @entries = current_user.entries
    @new_entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(params[:entry])

    @entry.save!
    redirect_to entries_path
  end
end
