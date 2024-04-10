require 'factory_bot_rails'

module Authentication
  class ForgotPasswordMailerPreview < ActionMailer::Preview
    include FactoryBot::Syntax::Methods

    def change_password_request
      user = create(:user, :with_reset_password_token)
      Authentication::ForgotPasswordMailer.with(user:).change_password_request
    end
  end
end
