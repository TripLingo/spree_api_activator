class CreateSpreeApiV1Activators < ActiveRecord::Migration
  def change
    create_table :spree_api_v1_activators do |t|

      t.timestamps
    end
  end
end
