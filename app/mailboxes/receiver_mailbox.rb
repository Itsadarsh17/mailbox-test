class ReceiverMailbox < ApplicationMailbox
  def process
    body = mail.text_part.decoded
    description = body.gsub(/\r\n/, ' ')
    inbound_email.extracted_data = description
    inbound_email.save
  end
end
