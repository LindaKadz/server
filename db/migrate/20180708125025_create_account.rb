class CreateAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
    t.string :balance
    end
  end
end
