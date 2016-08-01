class ReportsController < ApplicationController
  def create
    Report.create(report_params)
  end

  private

  def report_params
    params.require(:report).permit(:name, :phone, :notice)
  end
end
