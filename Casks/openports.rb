cask "openports" do
  version "1.1.3"
  sha256 "031c7a3318d09f0a5836e7ff5d6d0c06f6f9be58d77c9699b793323c57ef93dc5c"

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
