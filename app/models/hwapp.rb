class Hwapp < ApplicationRecord



  def self.search(search)
    where("desc LIKE ?", "%#{search}%")

  end

end
