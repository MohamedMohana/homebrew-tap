cask "openports" do
  version "1.0.0"
  sha256 "20a6c4d9ba7a65de5977487dad50441f2ce9e0c6483c32be696355f0ea88b7fa"

  url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-#{version}.zip",
      verified: "github.com/MohamedMohana/openports/"
  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
