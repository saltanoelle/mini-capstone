class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :categories, through: :categorized_products
  has_many :categorized_products
  has_many :carted_products
  
  
  
  def sale_message 
    if price.to_f <= 2   #to float from integer to string
    puts "Discount Item"    
    else 
    puts "Everyday Price" 
    end
  end  

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: { maximum: 500 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  # def tax
  #   price.to_f * 0.09
  # end  

  # def total
  #   price.to_f +  tax
  # end
end


  #def ingrdients_list
  #return ingredients.spli(",")
  # def friendly_created_at
    # created_at.strftime("#paste the code")
    #def_friendly prep_time>>
