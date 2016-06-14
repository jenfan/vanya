ActiveAdmin.register Product do
  permit_params :title, :description, :full_description, :price, :image, :category_id, :remote_url

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
      row :category
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
      f.input :category, as: :select
      f.input :price
      f.input :image
      f.input :remote_url
    end
    f.actions
  end
end
