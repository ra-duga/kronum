class AddCommentToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :comment, :text
  end
end
