require 'spec_helper'

describe AvaluosController do

  # avaluo belongs_to lote, and is a nested resource of so it can only be
  # accessed/created bya this lote.

  include_context "it is nested in lote"

  # This should return the minimal set of attributes required to create a valid
  # Avaluo. As you add validations to Avaluo, be sure to
  # update the return value of this method accordingly.

  def valid_attributes
    Factory.attributes_for(:avaluo)
  end

  let(:valid_avaluo) do
    @lote.create_avaluo! valid_attributes
  end

  it "there is no avaluos index" do
    expect { get :index }.to raise_error(ActionController::RoutingError)
  end

  describe "GET show" do
    it "assigns the requested avaluo as @avaluo" do
      get :show, :lote_id => valid_avaluo.lote.id
      assigns(:avaluo).should eq(valid_avaluo)
    end
  end

  describe "GET new" do
    it "assigns a new avaluo as @avaluo" do
      get :new, :lote_id => @lote.id
      assigns(:avaluo).should be_a_new(Avaluo)
    end
  end

  describe "GET edit" do
    it "assigns the requested avaluo as @avaluo" do
      get :edit, :lote_id => valid_avaluo.lote.id
      assigns(:avaluo).should eq(valid_avaluo)
    end
  end

  describe "POST create" do
    describe "with valid params" do

      let(:post_create) do
        post :create, :avaluo => valid_attributes, :lote_id => @lote.id.to_s
      end

      it "creates a new Avaluo" do
        expect {
          post_create
        }.to change(Avaluo, :count).by(1)
      end

      it "assigns a newly created avaluo as @avaluo" do
        post_create
        assigns(:avaluo).should be_a(Avaluo)
        assigns(:avaluo).should be_persisted
      end

      it "redirije al lote correspondiente" do
        post_create
        response.should redirect_to(@lote)
      end
    end

    describe "with invalid params" do

      def invalidator
        Avaluo.any_instance.stub(:save).and_return(false)
      end

      let(:post_create) { post :create, :avaluo => {}, :lote_id => @lote.id.to_s }

      it "assigns a newly created but unsaved avaluo as @avaluo" do
        invalidator
        post_create
        assigns(:avaluo).should be_a_new(Avaluo)
      end

      it "re-renders the 'new' template" do
        invalidator
        post_create
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested avaluo" do
        Avaluo.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :lote_id => valid_avaluo.lote.id, :avaluo => {'these' => 'params'}
      end

      it "assigns the requested avaluo as @avaluo" do
        put :update, :lote_id => valid_avaluo.lote.id, :avaluo => valid_attributes
        assigns(:avaluo).should eq(valid_avaluo)
      end

      it "redirije al lote correspondiente" do
        put :update, :lote_id => valid_avaluo.lote.id, :avaluo => valid_attributes
        response.should redirect_to(@lote)
      end
    end

    describe "with invalid params" do
      it "assigns the avaluo as @avaluo" do
        lote_id = valid_avaluo.lote.id
        # Trigger the behavior that occurs when invalid params are submitted
        Avaluo.any_instance.stub(:save).and_return(false)
        put :update, :lote_id => lote_id, :avaluo => {}
        assigns(:avaluo).should eq(valid_avaluo)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        lote_id = valid_avaluo.lote.id
        Avaluo.any_instance.stub(:save).and_return(false)
        put :update, :lote_id => valid_avaluo.lote.id, :avaluo => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested avaluo" do
      avaluo = valid_avaluo
      expect {
        delete :destroy, :lote_id => valid_avaluo.lote.id
      }.to change(Avaluo, :count).by(-1)
    end

    it "redirije al lote correspondiente" do
      delete :destroy, :lote_id => valid_avaluo.lote.id
      response.should redirect_to(@lote)
    end
  end
end
