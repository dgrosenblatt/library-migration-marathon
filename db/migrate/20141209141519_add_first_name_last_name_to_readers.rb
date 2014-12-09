class AddFirstNameLastNameToReaders < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.each do |reader|
      first_name = reader.full_name.split.first
      last_name  = reader.full_name.split.last

      reader.first_name = first_name
      reader.last_name  = last_name

      reader.save!
    end
  end
end
