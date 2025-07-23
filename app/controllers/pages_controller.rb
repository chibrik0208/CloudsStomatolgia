class PagesController < ApplicationController
  def main
  end

  def callback
    name    = params[:name]
    email   = params[:email]
    phone   = params[:phone]
    message = params[:message]

    CallbackMailer.send_callback(name, email, phone, message).deliver_now
    flash[:notice] = "Wkróce się z tobą skontaktujemy!"
    redirect_to root_path
  end
end
