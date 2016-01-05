# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    chat_message = Chat.create(deck_id: 1, message: data["message"])
    ActionCable.server.broadcast "chat_channel", partial: rendered_message(chat_message)
  end

  private

  def rendered_message(message)
    ApplicationController.renderer.render partial: "decks/chat", locals: { chat: message }
  end
end
