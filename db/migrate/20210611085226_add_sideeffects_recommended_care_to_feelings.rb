class AddSideeffectsRecommendedCareToFeelings < ActiveRecord::Migration[6.0]
  def change
    add_column :feelings, :sideeffects, :string
    add_column :feelings, :recommendedto, :string
    add_column :feelings, :care, :string
  end
end
