class RecordLabelsController < ApplicationController

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
    record_label = RecordLabel.find_or_create_by(record_label_params)
    if record_label.save
      redirect_to record_label_path(record_label)
    else
      redirect_to new_record_label_path
    end

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