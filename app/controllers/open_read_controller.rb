class OpenReadController < ProtectedController
  skip_before_action :authenticate, if: :read_action?

  private

  def read_actions?
    action = action_name.to_sym
    action == :show || action == :index
  end
end
