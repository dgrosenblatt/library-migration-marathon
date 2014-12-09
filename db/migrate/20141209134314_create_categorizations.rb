class CreateCategorizations < ActiveRecord::Migration
  def change
    create_join_table :books, :categories, table_name: :categorizations
  end
end
