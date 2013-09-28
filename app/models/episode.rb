class Episode < ActiveRecord::Base
  has_attached_file :image,
                    styles: { medium: "300x300>", thumb: "100x100>" }

  scope :last_ten, -> { limit(10) }

  def paid_or_free
    return 'Paid' if paid
    return 'Free'
  end
end
