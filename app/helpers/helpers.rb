class Helpers
  def self.current_user(session)
    user = User.find_by(session[:user_id])
    if user
      user
    else
      nil
    end
  end
  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end
