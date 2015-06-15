ActiveAdmin.register_page "Settings" do
  title = I18n.t('settings.menu.label')

  menu label: title, priority: 99

  content title: title  do
    render partial: 'admin/settings/index'
  end

  controller do
    def settings_list
      settings = ActiveadminSettingsCached.settings_klass
      settings.defaults.merge!(settings.all)
    end
  end
end
