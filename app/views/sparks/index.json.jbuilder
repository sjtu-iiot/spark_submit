json.array!(@sparks) do |spark|
  json.extract! spark, :id, :classname, :master, :memory, :cores, :parameters, :cmd, :cmdresult
  json.url spark_url(spark, format: :json)
end
