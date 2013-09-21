json.array!(@kids) do |kid|
  json.extract! kid, :teacher_id, :first_name, :last_name, :email, :classroom_id, :school_id
  json.url kid_url(kid, format: :json)
end
