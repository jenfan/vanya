ActiveAdmin.register Photo do
  permit_params :image, :product_id, :gallery_id, :remote_url

  index do
    selectable_column
    id_column
    column :product_id
    column :gallery_id
    column :image do |photo|
      image_tag photo.image.url(:thumb)
    end
    column :remote_url
    actions
  end

  show do
    attributes_table do
      row :product_id
      row :gallery_id
      row :image do |photo|
        image_tag photo.image.url(:thumb)
      end
      row :remote_url
    end
  end

  form do |f|
    f.inputs 'Фото' do
      f.input :image
      f.input :remote_url
      f.input :product, as: :select
      f.input :gallery, as: :select
    end
    f.actions
  end
end
