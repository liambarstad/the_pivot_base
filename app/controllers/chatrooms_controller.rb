class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(1)
    @message = Message.new
  end
end