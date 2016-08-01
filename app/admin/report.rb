ActiveAdmin.register Report do
  permit_params :name, :phone, :notice

  index do
    selectable_column
    id_column
    column :name
    column :phone
    column :notice
    actions
  end

  form do |f|
    f.inputs 'Детали' do
      f.input :name
      f.input :phone
      f.text_area :notice, rows: 3
    end
    f.actions
  end
end
