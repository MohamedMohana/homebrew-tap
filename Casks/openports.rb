cask "openports" do
  version "1.1.3"
  sha256 "057dbb7be3e7c9a49d69efdc05f42e56b658277c36727f585d5e3a1f30b67545"

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
