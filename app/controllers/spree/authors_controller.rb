class Spree::AuthorsController < ApplicationController
  # GET /spree/authors
  # GET /spree/authors.json
  def index
    @spree_authors = Spree::Author.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spree_authors }
    end
  end

  # GET /spree/authors/1
  # GET /spree/authors/1.json
  def show
    @spree_author = Spree::Author.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spree_author }
    end
  end

  # GET /spree/authors/new
  # GET /spree/authors/new.json
  def new
    @spree_author = Spree::Author.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spree_author }
    end
  end

  # GET /spree/authors/1/edit
  def edit
    @spree_author = Spree::Author.find(params[:id])
  end

  # POST /spree/authors
  # POST /spree/authors.json
  def create
    @spree_author = Spree::Author.new(params[:spree_author])

    respond_to do |format|
      if @spree_author.save
        format.html { redirect_to @spree_author, notice: 'Author was successfully created.' }
        format.json { render json: @spree_author, status: :created, location: @spree_author }
      else
        format.html { render action: "new" }
        format.json { render json: @spree_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spree/authors/1
  # PUT /spree/authors/1.json
  def update
    @spree_author = Spree::Author.find(params[:id])

    respond_to do |format|
      if @spree_author.update_attributes(params[:spree_author])
        format.html { redirect_to @spree_author, notice: 'Author was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spree_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spree/authors/1
  # DELETE /spree/authors/1.json
  def destroy
    @spree_author = Spree::Author.find(params[:id])
    @spree_author.destroy

    respond_to do |format|
      format.html { redirect_to spree_authors_url }
      format.json { head :no_content }
    end
  end
end
