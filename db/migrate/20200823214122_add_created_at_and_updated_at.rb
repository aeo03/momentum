class AddCreatedAtAndUpdatedAt < ActiveRecord::Migration[6.0]
  def change
    add_column :quotations, :created_at, :datetime
    add_column :quotations, :updated_at, :datetime
  end
end
