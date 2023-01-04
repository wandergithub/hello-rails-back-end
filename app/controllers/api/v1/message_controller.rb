class Api::V1::MessageController < ApplicationController
  def index
    render json: rand_message
  end

  private

  def rand_message
    messages = Message.all
    messages.sample
  end
end
