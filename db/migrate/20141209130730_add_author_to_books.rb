class AddAuthorToBooks < ActiveRecord::Migration
  def change
    def up
      add_column :books, :author, :string
    end
    def down
      remove_column :books, :author, :string
    end
  end
end
