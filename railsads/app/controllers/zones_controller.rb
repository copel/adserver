class ZonesController < ApplicationController
  def index
 	#@zones = Zone.all
 	#@publisher = Publisher.all
  	@zones = Zone.find_by_sql("select *
  							from zones as z 
  							inner join 
  							publishers as p 
  							on z.publisher_id = p.id
  							")
  end

  def new
  	@zone = Zone.new
  	@publisher = Publisher.find(params[:format])
  end

  def show
  	@zone = Zone.find(params[:id])
  	@publisher = Publisher.find(@zone.publisher_id)
  	#sql = "select *
  	#	from zones as z 
  	#	inner join 
  	#	publishers as p 
  	#	on z.publisher_id = p.id
  	#	where publisher_id = ?
  	#	"
  	#publisher_id = params[:id].to_i
  	#@zone = Zone.find_by_sql(sql, publisher_id)
  end

  def edit
  	@zone = Zone.find(params[:id])
  	@publisher = Publisher.find(@zone.publisher_id)
  end

  def create
  	@zone = Zone.new(zone_params)

  	respond_to do |format|
  		if @zone.save
  			format.html { redirect_to @zone, notice: 'Zone was successfully created.' }
  			format.json { render action: 'show', status: :created, location: @zone}	
  		else
  			format.html { render action: 'new'}
  			format.json { render json: @zone.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private
  	def zone_params
  		params.require(:zone).permit(:publisher_id, :name, :category, :zone_type, :width, :height, :position, :floorprice, :block_domain)
  	end
end
