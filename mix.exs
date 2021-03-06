defmodule Amix.Mixfile do
  use Mix.Project

  def project do
    [app: :amix,
     version: "0.0.1",
     elixir: "~> 0.14",
     deps: deps_by_env(Mix.env)]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:newrelic],
     mod: {Amix, []}
   ]
  end

  # Dependencies can be hex.pm packages:
  defp deps_by_env(_) do
    [
      {:plug, "~> 0.5.1"},
      {:plug, github: "esl/lhttpc"},
      {:newrelic, github: "wooga/newrelic-erlang"}
    ]
  end
end   
