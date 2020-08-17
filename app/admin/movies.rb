ActiveAdmin.register Movie do

  permit_params :title, :url

  form do |f|
    f.inputs do
      f.input :title
      f.input :url
    end
    f.actions
  end
end
