class SocketChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_data(data) 
    ActionCable.server.broadcast "room", data:data['data']
  end
end
