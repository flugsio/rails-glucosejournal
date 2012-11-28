class EntriesController < ApplicationController
  before_filter :authorize

  def index
    @entries = current_user.entries
    @new_entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(params[:entry])

    if @entry.save
      @form_entry = Entry.new
    else
      @form_entry = @entry
    end
  end
end
