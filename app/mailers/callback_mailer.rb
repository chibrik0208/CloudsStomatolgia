class CallbackMailer < ApplicationMailer
  default to: "amelia.brooks.y96@gmail.com" # замени на свою почту

  def send_callback(name, email, phone, message)
    @name = name
    @phone = phone
    @message = message
    @sender_email = email

    mail(
      from: email,
      subject: "Nowa prośba o skantaktowaniu się od #{@name}"
    )
  end
end
