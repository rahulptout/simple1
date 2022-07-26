class Subject < ApplicationRecord
  has_many :pages,dependent: :destroy
#   scope :visible,lambda {where(visible: true )}
#   scope :invisible, lambda {where(visible: false )}
  scope :sorted, lambda {order("position ASC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
#
#   validates :visible, inclusion: [true, false ]
#   # validates :name, presence: true
#   # validates :name,acceptance: true
#   # validates :name, acceptance: {accept: %w[TRUE accepted] }
#   # validates :position,confirmation: true
#   # validates :position_confirmation,presence: true
#   #   validates :name, :position, :visible, presence: false
#    validates :name, format: { with: /\A[a-zA-Z]+\z/,
#       message: "only allows letters" }
#   # validates :visible, numericality: { only_integer: true ,message: "only numericality value"}
#
#   after_touch do |subject|
#     puts "You have touched an object"
#   end
#
#
#   before_create do
#       self.name = name.capitalize if name.blank?
#     end
#
#   before_validation :normalize_name, on: :create
#   before_validation :remove_whitespaces, on: :create
#   before_save {self.name = name.downcase }
#   # private
#   # def norsmalize_name
#   #   self.name = name.downcase.titleize
#   #   self.name = name.upcase.titleize
#   # end
#   def remove_whitespaces
#     name.strip!
#   end
#
#   after_destroy :log_destroy_action
#
#   def log_destroy_action
#     self .name
#   end
#
# #  class method
#   def self.class_method_name
#     puts 'this class method'
#   end
#   #  instance method
#
#   def instance_method
#     self.name
#   end
#   #scope
#   scope :in_print, -> { where(out_of_print:true)}
#   scope :out_of_print, -> { where(out_of_print: true)}
#
#   protected
#   def Protected_method
#     self.name
#   end
#



#  private method
#   private
#   def reset_attribute(attribute)
#     send("#{attribute}=", 0)
#   end



  def name_space
    self.name

  end

  def self.name1_space
    position
  end

end


 