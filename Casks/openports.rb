cask "openports" do
  version "2.0.4"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.4/OpenPorts-v2.0.4-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "6d96293877fb83317956f19382274e5089d2c59b4b70982315ad1f0ad616d9bc"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.4/OpenPorts-v2.0.4-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "98094d105762e4879fe314f7ad7530db63ed3823c7d7e4b512e1f33362e99676"
  end

  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes with safety ratings and real-time preference updates"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
