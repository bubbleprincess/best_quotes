class QuotesController < Rilakkuma::Controller
  # def a_quote
  #   render :a_quote, :noun => winking
  # end
  #
  # def exception
  #   raise "It's a bad one!"
  # end

  def quote_1
    quote_1 = Rilakkuma::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def index
    quotes = FileModel.all

    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  # def edit
  #   @quotes = FileModel.find(params[:id])
  #
  #   render :update_quote, :quotes => quotes
  # end
  #
  # def update
  #   @quotes = Filemodel.find(params[:id])
  #
  #   respond_to do |format|
  #     if @quotes.update(quote_params)
  #       format.html { redirect_to @quotes, notice: 'Quote was successfully updated.' }
  #       format.json { render :index, status: :ok, location: @quotes }
  #     else
  #       format.html { render :update }
  #       format.json { render json: @quotes.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # private
  #
  # def quote_params
  #   params.require(:quote, :submitter, :attribution)
  # end
end