class AwsTextsController < ApplicationController
  def index
    @aws_texts = AwsText.order(id: :asc)
  end

  def show
    @aws_texts = AwsText.find(params[:id])
  end

end