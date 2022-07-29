class Subject < ApplicationRecord
  has_one :page

  scope :visible,lambda {where(visible: true )}
  scope :invisible, lambda {where(visible: false )}
  scope :sorted, lambda {order("position ASC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

end
 