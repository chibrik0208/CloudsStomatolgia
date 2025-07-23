class CallbackMailer < ApplicationMailer
  default to: "sandbox.smtp.mailtrap.io"

  def send_callback(name, email, phone, message)
    @name = name
    @phone = phone
    @sender_email = email

    mail(
      from: email,
      subject: "Nowa prośba o skantaktowaniu się od #{@name}"
    )
  end
end
