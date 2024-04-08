require 'factory_bot_rails'

module Authentication
  class UnlockUserMailerPreview < ActionMailer::Preview
    include FactoryBot::Syntax::Methods

    def lock_account
      user = create(:user, :with_unlock_user_token)
      Authentication::UserAccountMailer.with(user:).lock_account
    end
  end
end
