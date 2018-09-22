class ScsController < ApplicationController

  def index
    @scs = Sc.all
    output = []
    @scs.each do |row|
      hash = {}
      hash[:siv_id] = row[:siv_id]
      hash[:qad_id] = row[:qad_id]#row[:numqad]
      hash[:rut] = row[:rut]
      hash[:client_name] = row[:client_name]
      hash[:name] = row[:name]
      hash[:sku] = row[:sku]
      hash[:measurement] = row[:umx]
      hash[:siv_code] = row[:siv_code]
      hash[:kind] = row[:kind]
      hash[:sub_kind] = row[:sub_kind]
      hash[:materials] = row[:materials]
      hash[:structure] = row[:structure]
      output << hash
    end

    render :json => output.to_json

  end

end
