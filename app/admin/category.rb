ActiveAdmin.register Category do
  permit_params :name, :url, :header

  index do
    selectable_column
    id_column
    column :name
    column :url
    column :header
    actions
  end

  form do |f|
    f.inputs 'Детали' do
      f.input :url
      f.input :name
      f.inputs "Full Description" do
        f.text_area :header, rows: 20
      end
    end
    f.actions
  end
end
