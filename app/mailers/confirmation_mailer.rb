class ConfirmationMailer < ApplicationMailer
	  default from: "contact@sambadanfakha.com"

	  def sample_email(user)
	    @user = user
	    mail(to: @user.email, subject: 'Bienvenue sur Creapolis')
	  end

end