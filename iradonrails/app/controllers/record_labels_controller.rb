class ArtistsController < ApplicationController

  def index
    @record_labels = RecordLabel.all
  end

  def show
    @record_label = RecordLabel.find(params[:id])
  end

  def new
    @record_label = RecordLabel.new
  end

  def create
  end


  def edit
  end

  def update
  end

  def destroy
  end

  def record_label_params
    params.require(:record_label).permit(
      :name,
      :founding_date)
  end

end