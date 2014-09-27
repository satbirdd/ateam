json.array!(@change_logs) do |change_log|
  json.extract! change_log, :id, :title, :program_id, :content, :author_id
  json.url change_log_url(change_log, format: :json)
end
