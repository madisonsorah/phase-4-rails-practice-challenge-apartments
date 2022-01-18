class LeasesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end

    def destroy
        lease = find_lease
        tenant.destroy
        head :no_content
    end

    private
    def find_lease
        Lease.find(params[:id])
    end
    
    def lease_params
        params.permit(:rent, :tenant_id, :apartment_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
