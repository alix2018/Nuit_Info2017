class AddAssociationToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :association, foreign_key: true
  end
end
