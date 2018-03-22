# Preview all emails at http://localhost:3000/rails/mailers/confirmation
class ConfirmationPreview < ActionMailer::Preview
	def sample_mail_preview
    ConfirmationMailer.sample_email(User.first)
  end
end


