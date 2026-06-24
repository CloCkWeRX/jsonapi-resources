module JSONAPI
  module ActiveRelation
    module Adapters
      module JoinLeftActiveRecordAdapter
        # DEPRECATED - simply use `left_joins``
        def joins_left(*columns)
          left_joins(columns)
        end

        alias_method :join_left, :joins_left
      end

      if defined?(ActiveRecord)
        ActiveRecord::Base.extend JoinLeftActiveRecordAdapter
      end
    end
  end
end