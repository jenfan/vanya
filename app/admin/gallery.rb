ActiveAdmin.register Gallery do
  permit_params :title, :description, :full_description, :price, :image

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

  show do
    attributes_table do
      row :title
      row :image do |photo|
        image_tag photo.image.url(:thumb)
      end
      row :description
      row :photos do |product|
        product.photos.map do |photo|
          image_tag photo.image.url(:thumb)
        end
      end
    end
  end

  form do |f|
    f.inputs 'Детали' do
      f.input :title
      f.input :description
      f.input :full_description
      f.input :price
      f.input :image
    end
    f.actions
  end
end
