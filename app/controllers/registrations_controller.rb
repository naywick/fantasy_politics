class RegistrationsController < Devise::RegistrationsController

  protected

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    new_political_party_path
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    new_political_party_path
  end
end
