class ProductsController < ApplicationController
      def index
        @products = [
          { id: 1, name: "Laptop", price: 1200 },
          { id: 2, name: "Mechanical Keyboard", price: 150 },
          { id: 3, name: "Monitor", price: 300 }
        ]
      end
end
