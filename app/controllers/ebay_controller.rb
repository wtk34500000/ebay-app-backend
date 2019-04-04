class EbayController < ApplicationController
    
    def create 
        client = Ebay::Finding::Api::Client.new("tonyhuan-myapp-PRD-6bcb87b90-2910d9d6")

# Call findItemsByKeywords

        response=client.find_items_by_keywords("candy")
        byebug
        if response.success?
            byebug
            puts "Yes"
        end
    end
end
