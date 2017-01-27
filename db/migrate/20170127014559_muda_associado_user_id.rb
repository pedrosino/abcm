class MudaAssociadoUserId < ActiveRecord::Migration
  def up
    rename_column :associados, :usuario_id, :user_id
  end

  def down
    rename_column :associados, :user_id, :usuario_id
  end
end
