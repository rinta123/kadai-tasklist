class AddStatusToTasks < ActiveRecord::Migration[6.1]
  def up
    add_column :tasks, :status, :string
  end
  
end
