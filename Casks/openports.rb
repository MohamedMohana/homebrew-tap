cask "openports" do
  version "1.1.3"
  sha256 "9ba1e09a3466f46ecbef92556f8bf202d10f18c3dc55d03ec93f9bd67176ed61"

  url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}.zip",
      verified: "github.com/MohamedMohana/openports/"
  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes with safety ratings and Preferences UI"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
