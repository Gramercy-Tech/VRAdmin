class AddSizeToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :size, :integer
  end
end
