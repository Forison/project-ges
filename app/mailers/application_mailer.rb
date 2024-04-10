class ApplicationMailer < ActionMailer::Base
  include AuthenticationHelper

  default from: 'support@selflearn.co'
  layout 'mailer'
end
