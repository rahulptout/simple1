class Subject < ApplicationRecord
  has_many :pages,dependent: :destroy
  scope :visible,lambda {where(visible: true )}
  scope :invisible, lambda {where(visible: false )}
  scope :sorted, lambda {order("position ASC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

  validates :visible, inclusion: [true, false ]
  # validates :name, presence: true
  # validates :name,acceptance: true
  # validates :name, acceptance: {accept: %w[TRUE accepted] }
  # validates :position,confirmation: true
  # validates :position_confirmation,presence: true
  #   validates :name, :position, :visible, presence: false
   validates :name, format: { with: /\A[a-zA-Z]+\z/,
      message: "only allows letters" }
  # validates :visible, numericality: { only_integer: true ,message: "only numericality value"}

  after_touch do |subject|
    puts "You have touched an object"
  end


  before_create do
      self.name = name.capitalize if name.blank?
    end

  # before_validation :normalize_name, on: :create
  before_save {self.name = name.downcase }
  # private
  # # def normalize_name
  # #   self.name = name.downcase.titleize
  # #   # self.name = name.upcase.titleize
  # # end


end


 