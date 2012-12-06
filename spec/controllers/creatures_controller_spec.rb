#require 'spec_helper'
#
## This spec was generated by rspec-rails when you ran the scaffold generator.
## It demonstrates how one might use RSpec to specify the controller code that
## was generated by Rails when you ran the scaffold generator.
##
## It assumes that the implementation code is generated by the rails scaffold
## generator.  If you are using any extension libraries to generate different
## controller code, this generated spec may or may not pass.
##
## It only uses APIs available in rails and/or rspec-rails.  There are a number
## of tools you can use to make these specs even more expressive, but we're
## sticking to rails and rspec-rails APIs to keep things simple and stable.
##
## Compared to earlier versions of this generator, there is very limited use of
## stubs and message expectations in this spec.  Stubs are only used when there
## is no simpler way to get a handle on the object needed for the example.
## Message expectations are only used when there is no simpler way to specify
## that an instance is receiving a specific message.
#
#describe CreaturesController do
#
#  # This should return the minimal set of attributes required to create a valid
#  # Creature. As you add validations to Creature, be sure to
#  # update the return value of this method accordingly.
#  def valid_attributes
#    {   :date_aquired => "2010-01-02", 
#				:name => "test", 
#				:scientific_name => "test scientific", 
#				:fishtank_id => 1 
#		}
#  end
#  
#  # This should return the minimal set of values that should be in the session
#  # in order to pass any filters (e.g. authentication) defined in
#  # CreaturesController. Be sure to keep this updated too.
#  def valid_session
#			{}
#  end
#
#  describe "GET index" do
#    it "assigns all creatures as @creatures" do
#      creature = Creature.create! valid_attributes
#      get :index, {}, valid_session
#      assigns(:creatures).should eq([creature])
#    end
#  end
#
#  describe "GET show" do
#    it "assigns the requested creature as @creature" do
#      creature = Creature.create! valid_attributes
#      get :show, {:id => creature.to_param}, valid_session
#      assigns(:creature).should eq(creature)
#    end
#  end
#
#  describe "GET new" do
#    it "assigns a new creature as @creature" do
#      get :new, {}, valid_session
#      assigns(:creature).should be_a_new(Creature)
#    end
#  end
#
#  describe "GET edit" do
#    it "assigns the requested creature as @creature" do
#      creature = Creature.create! valid_attributes
#      get :edit, {:id => creature.to_param}, valid_session
#      assigns(:creature).should eq(creature)
#    end
#  end
#
#  describe "POST create" do
#    describe "with valid params" do
#      it "creates a new Creature" do
#        expect {
#          post :create, {:creature => valid_attributes}, valid_session
#        }.to change(Creature, :count).by(1)
#      end
#
#      it "assigns a newly created creature as @creature" do
#        post :create, {:creature => valid_attributes}, valid_session
#        assigns(:creature).should be_a(Creature)
#        assigns(:creature).should be_persisted
#      end
#
#      it "redirects to the created creature" do
#        post :create, {:creature => valid_attributes}, valid_session
#        response.should redirect_to(Creature.last)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns a newly created but unsaved creature as @creature" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        Creature.any_instance.stub(:save).and_return(false)
#        post :create, {:creature => {}}, valid_session
#        assigns(:creature).should be_a_new(Creature)
#      end
#
#      it "re-renders the 'new' template" do
#        # Trigger the behavior that occurs when invalid params are submitted
#        Creature.any_instance.stub(:save).and_return(false)
#        post :create, {:creature => {}}, valid_session
#        response.should render_template("new")
#      end
#    end
#  end
#
#  describe "PUT update" do
#    describe "with valid params" do
#      it "updates the requested creature" do
#        creature = Creature.create! valid_attributes
#        # Assuming there are no other creatures in the database, this
#        # specifies that the Creature created on the previous line
#        # receives the :update_attributes message with whatever params are
#        # submitted in the request.
#        Creature.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
#        put :update, {:id => creature.to_param, :creature => {'these' => 'params'}}, valid_session
#      end
#
#      it "assigns the requested creature as @creature" do
#        creature = Creature.create! valid_attributes
#        put :update, {:id => creature.to_param, :creature => valid_attributes}, valid_session
#        assigns(:creature).should eq(creature)
#      end
#
#      it "redirects to the creature" do
#        creature = Creature.create! valid_attributes
#        put :update, {:id => creature.to_param, :creature => valid_attributes}, valid_session
#        response.should redirect_to(creature)
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns the creature as @creature" do
#        creature = Creature.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        Creature.any_instance.stub(:save).and_return(false)
#        put :update, {:id => creature.to_param, :creature => {}}, valid_session
#        assigns(:creature).should eq(creature)
#      end
#
#      it "re-renders the 'edit' template" do
#        creature = Creature.create! valid_attributes
#        # Trigger the behavior that occurs when invalid params are submitted
#        Creature.any_instance.stub(:save).and_return(false)
#        put :update, {:id => creature.to_param, :creature => {}}, valid_session
#        response.should render_template("edit")
#      end
#    end
#  end
#
#  describe "DELETE destroy" do
#    it "destroys the requested creature" do
#      creature = Creature.create! valid_attributes
#      expect {
#        delete :destroy, {:id => creature.to_param}, valid_session
#      }.to change(Creature, :count).by(-1)
#    end
#
#    it "redirects to the creatures list" do
#      creature = Creature.create! valid_attributes
#      delete :destroy, {:id => creature.to_param}, valid_session
#      response.should redirect_to(creatures_url)
#    end
#  end
#
#end
