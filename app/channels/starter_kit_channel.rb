class StarterKitChannel < ApplicationCable::Channel
  def subscribed
    stream_from "starter_kit_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
