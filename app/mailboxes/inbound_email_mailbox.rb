class InboundEmailMailbox < ApplicationMailbox
  # Match emails sent to your Mailgun domain (replace 'sandbox123.mailgun.org' with your actual domain)

  def process
    binding.pry
    # Access email content with `mail` method (Mail object)
    # Example: log the subject and sender of the received email
    Rails.logger.info "Received email with subject: #{mail.subject} from #{mail.from.first}"
  end
end
