cask "openports" do
  version "2.0.1"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.1/OpenPorts-v2.0.1-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "aa899371e4576df5ab2a4574934fc255c93769f3cf3883bb621c9c9d6a51d912"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.1/OpenPorts-v2.0.1-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "20ae5fa3cb7e8f1c74eeb92832b5544b9f132fbf2a58cfcd1902082d0c9d4ecf"
  end

  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes with safety ratings and real-time preference updates"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
