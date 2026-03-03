cask "openports" do
  version "2.0.2"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.2/OpenPorts-v2.0.2-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "78bb2b1c74d0b0431fdb742c0e8c5cd1ccbb95f2793e6e9baf1623c466a976d0"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.2/OpenPorts-v2.0.2-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "cc25f13707fadd07e6cfe72e1cf91e15729a2bcfa1fb23502a18eb0b87374add"
  end

  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes with safety ratings and real-time preference updates"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
