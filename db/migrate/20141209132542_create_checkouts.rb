class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer   :book_id, null: false
      t.string    :reader, null: false
      t.datetime  :due_on, null: false
      t.datetime  :returned_on
      t.timestamps
    end
  end
end
