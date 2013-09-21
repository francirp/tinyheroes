json.array!(@classrooms) do |classroom|
  json.extract! classroom, :school_id, :teacher_id
  json.url classroom_url(classroom, format: :json)
end
