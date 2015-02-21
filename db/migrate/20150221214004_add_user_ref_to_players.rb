class AddUserRefToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :user, index: true
    add_foreign_key :players, :users
  end
end
