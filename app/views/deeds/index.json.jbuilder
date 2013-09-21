json.array!(@deeds) do |deed|
  json.extract! deed, :what, :from_id, :to_id, :when, :classroom_id, :teacher_id, :school_id
  json.url deed_url(deed, format: :json)
end
