class TestablesController < ApplicationController

def index
	
end

def palate_structures
	@structure = {}
	@structure["tannin"] = params["tannin"]
	@structure["acid"] = params["acid"]
	@structure["alcohol"] = params["alcohol"]
	@structure["body"] = params["body"]

	render json: @structure 
end

end
