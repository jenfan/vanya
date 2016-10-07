ActiveAdmin.register Page do
  menu label: 'Страницы'
  permit_params :title, :body, :url

  index do
    selectable_column
    id_column
    column :title
    column :url
    actions
  end

  form do |f|
    f.inputs 'Детали' do
      f.input :title
      f.input :url
      f.inputs 'Page body' do
        f.text_area :body, class: 'tinymce', rows: 20
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :url
      row :body do
        page.body.html_safe
      end
    end
  end
end
