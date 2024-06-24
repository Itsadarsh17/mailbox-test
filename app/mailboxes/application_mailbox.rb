class ApplicationMailbox < ActionMailbox::Base
  routing :all => :receiver
end
