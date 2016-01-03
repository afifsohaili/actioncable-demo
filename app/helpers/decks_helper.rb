module DecksHelper
  def deck_owner?
    cookies[:deck_owner] == "yes"
  end
end
