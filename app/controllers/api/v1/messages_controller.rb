class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.order('Random()').first
    render json: { message: @messages.greeting }, status: :ok
  end
end
