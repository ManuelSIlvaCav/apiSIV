require 'sidekiq'
require 'sidekiq-scheduler'
class ScAddWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  require 'mdb'
  def perform(mdb_path)
    params = Hash.new
    db = Mdb.open(mdb_path)
    db[:cm].each do |row|
      params[:siv_id] = row[:numsiv]
      params[:qad_id] = row[:numqad]
      params[:rut] = row[:rutc]
      params[:client_name] = row[:cliente]
      params[:name] = row[:producto]
      params[:sku] = row[:sku]
      params[:umx] = row[:umx]
      params[:siv_code] = row[:codigoqad]
      params[:kind] = row[:tipoxx]
      params[:sub_kind] = row[:subtipoxx]
      params[:materials] = row[:materiales]
      params[:structure] = row[:estructurap]
      Sc.create(params)
    end
  end
end
