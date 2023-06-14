# frozen_string_literal: true

# helper methods for page navigation
module NavigationHelper
  def show_login?
    !user_signed_in? \
      && controller_name != 'sessions' \
      && controller_name != 'registrations' \
      && controller_name != 'passwords' \
      && controller_name != 'confirmations'
  end
end
