class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
