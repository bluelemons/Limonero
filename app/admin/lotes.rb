ActiveAdmin.register Lote do
  show do
    render "/lotes/lote"
  end
  
  controller do
      # This code is evaluated within the controller class

      def index
        @search = Lote.search(params[:search])
        @lotes = @search.page(params[:page])
        index!
      end
    end
end
