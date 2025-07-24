class SendCallbackJob < ApplicationJob
  queue_as :default

  def perform(name, email, phone)
    CallbackMailer.send_callback(name, email, phone).deliver_now
  end
end
