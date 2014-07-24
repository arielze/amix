defmodule Amix do
  use Application


  def init(opts) do
    opts
  end

  def start(_type, _args) do
    Amix.Supervisor.start_link
  end
end


