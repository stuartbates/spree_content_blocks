class Spree::ContentBlock < ActiveRecord::Base

  def safe_title
    title.blank?? token : title
  end

end
