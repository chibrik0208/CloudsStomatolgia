class PagesController < ApplicationController
  def callback
    @contact_form = ContactForm.new(contact_params)

    if @contact_form.valid?
      SendCallbackJob.perform_later(
        @contact_form.name,
        @contact_form.email,
        @contact_form.phone
      )

      flash[:notice] = "Wkrótce się z tobą skontaktujemy!"
      redirect_to root_path
    else
      flash[:alert] = @contact_form.errors.full_messages.join(", ")
      render :main, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :phone)
  end
end
