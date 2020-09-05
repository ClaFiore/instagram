class AddProfilepicFromUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profilepic, :string
  end
end
