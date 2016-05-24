ActiveAdmin.register Product do
  permit_params :title, :description, :price, :image, :category_id

  index do
    selectable_column
    id_column
    column :title
    column :image do |photo|
      image_tag photo.image.url(:thumb)
    end
    column :category
    column :description
    actions
  end

  form do |f|
    f.inputs 'Детали' do
      f.input :title
      f.input :description
      f.input :category, as: :select
      f.input :price
      f.input :image
    end
    f.actions
  end
end
