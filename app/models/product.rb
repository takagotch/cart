class Product < ActiveRecord::Base
  has_many :line_items

  before_destroy :ensure_not_referenced_by_line_item

  private

    def ensure_not_reference-by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'already exsited!')
      end
    end

end



