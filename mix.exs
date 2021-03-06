defmodule ElixirRustTest.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_rust_test,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      compilers: [:rustler] ++ Mix.compilers,
      rustler_crates: rustler_crates(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
	{:rustler, "~> 0.16.0"}
    ]
  end

  defp rustler_crates() do
    [niftest: [
        path: "native/niftest",
        mode: (if Mix.env == :prod, do: :release, else: :debug)
      ]]
  end
end
