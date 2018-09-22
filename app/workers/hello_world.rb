require 'sidekiq'
require 'sidekiq-scheduler'
require 'rubygems'

class HelloWorld
  include Sidekiq::Worker
  #TABLAS CON info
  #   # clientesn
  #   # clientesSIV
  #   # entregas
  #   # historial, historialc,
  #   # importasc1,2,3
  #   # pc, pp
  #   #sc y sc2 ---> Importante
  def perform
    params = Hash.new
    db = Mdb.open('/myapp/cotizaC.mdb')
    lista = Sc.all
    #db = Mdb.open(ruta absoluta)
    scs = db[:sc]
    scs.each do |row|
      # p row
      if lista.where(:siv_id => row[:numsiv]).empty?
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
        params[:fechacreacion] = row[:fechacrea]
        params[:fechaval] = row[:fechaval]
        Sc.create(params)
      end
    end
  end
end
