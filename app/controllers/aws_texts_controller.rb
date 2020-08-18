class AwsTextsController < ApplicationController
  def index
    @aws_texts = AwsText.order(id: :asc)
  end
end