require 'sidekiq'
require 'sidekiq-scheduler'
require 'rubygems'

class HelloWorld
  include Sidekiq::Worker

  def perform
    params = Hash.new
    db = Mdb.open("../../cotizaC.mdb")
    #db = Mdb.open(ruta absoluta en servidor)
    scs = db[:sc]
    scs.each do |row|
      if Sc.where(:siv_id => row[:numsiv]).empty?
        params[:siv_id] = row[:numsiv]
        params[:qad_id] = row[:codigoqad]#row[:numqad]
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
end
