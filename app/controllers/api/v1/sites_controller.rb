class Api::V1::SitesController < ApplicationController

    def index
        sites = Site.all 
        render json: SiteSerializer.new(sites)
    end

    def create
        site = Site.new(site_params)
        if site.save
          render json: SiteSerializer.new(site)
        else
          render json: { errors: site.errors.full_messages }
        end
    end

    def show
      site = Site.find_by(:id => params[:id])
      render json: SiteSerializer.new(site)
    end

    def update
      site = Site.find_by(:id => params[:id])
      site.update(params)
      render json: SiteSerializer.new(site)
    end
  
    
    private
    
    def site_params
        params.require(:site).permit(:name, :street_address, :city, :state, :zipcode, days_attributes: [:day_of_week, :start_time, :end_time], items_attributes: [:description, :quantity])
    end

end
