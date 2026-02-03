cask "openports" do
  version "1.0.0"
  sha256 "13d2d51133abc6d99786ebae059d789b6a255b2438e0ed8a3856b1a6852e2730"

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
