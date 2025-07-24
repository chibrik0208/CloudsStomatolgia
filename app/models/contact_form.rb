class ContactForm
  include ActiveModel::Model   

  attr_accessor :name, :email, :phone

  validates :name, presence: true, length: { minimum: 2, message: "Imie jest za krótkie (minimum 2 znaki)" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Nieprawidłowy adres e-mail" }
  validates :phone, presence: true, format: { with: /\A[0-9]{9}\z/, message: "Numer telefonu musi zawierać 9 cyfr" }
end