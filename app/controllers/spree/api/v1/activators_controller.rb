#class Spree::Api::V1::ActivatorsController < ApplicationController
  module Spree
    module Api
      module V1
        class ActivatorsController < Spree::Api::V1::BaseController
          def index
            @activators = Activator.order('name ASC')
          end

          def show
            activator
          end

          def create
            authorize! :create, Activator
            @activator = Activator.new(map_nested_attributes_keys(Spree::Activator, params[:activator]))
            if @activator.save
              render :show, :status => 201
            else
              invalid_resource!(@activator)
            end
          end

          def update
            authorize! :update, Activator
            if activator.update_attributes(map_nested_attributes_keys(Spree::Activator, params[:activator]))
              render :show, :status => 200
            else
              invalid_resource!(@activator)
            end
          end

          def destroy
            authorize! :delete, Activator
            activator.destroy
            render :text => nil, :status => 204
          end

          private
          def activator
            @activator ||= Spree::Activator.find(params[:id])
          end
        end
      end
    end
  end
  


#end
