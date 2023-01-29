class StaffMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.staff_mailer.schedule_update.subject
  #

  def schedule_update(contact)
    @contact = contact.body
    @greeting = "The user  #{contact.user.email} has changed his appointment time #{contact.title}, visita tu perfil del marketplace y sigue creando nuevas alianzas"
    @recipients =   contact.user.email
    emails = @recipients
    mail(:to => emails, :subject => " #{@greeting} ")
  end
end

