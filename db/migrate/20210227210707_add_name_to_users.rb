class AddNameToUsers < ActiveRecord::Migration[5.2]

def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :mobile_number, :integer, limit: 8

    execute <<-SQL.strip_heredoc
      UPDATE users
      SET first_name = '[[UPDATEME]]'
      WHERE first_name IS NULL
    SQL

    execute <<-SQL.strip_heredoc
      UPDATE users
      SET last_name = '[[UPDATEME]]'
      WHERE last_name IS NULL
    SQL

    change_column :users, :first_name, :string, null: false
    change_column :users, :last_name, :string, null: false
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
