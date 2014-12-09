class RemoveReaderFromCheckouts < ActiveRecord::Migration
  def up
      remove_column :checkouts, :reader, :string
  end

  def down
    add_column :checkouts, :reader, :string
  end
end
