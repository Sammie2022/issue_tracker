Rails.application.routes.draw do
  resources :projects do
    resources :issues
  end

  # Reporting and exports
  get 'reports/status_chart', to: 'reports#status_chart'
  get 'reports/project_chart', to: 'reports#project_chart'
  get 'reports/download_pdf', to: 'reports#download_pdf'
  get 'reports/download_excel', to: 'reports#download_excel'

  root "projects#index"
end
