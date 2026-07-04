cask "openports" do
  version "2.4.0"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "8f6782bdf5fa0c0c0508f95762e5453b6ac720e8db6a89f068209f564050aa24"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "0251c0d6d428ce2de04e9143c3111887d4c9fbaf4f405cbe58098018b75f1bce"
  end

  name "OpenPorts"
  desc "Smart port monitoring for Mac developers"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: :sonoma

  app "OpenPorts.app"
  binary "openports-cli"

  caveats <<~EOS
    The openports-cli binary is ad-hoc signed. If Gatekeeper blocks it, run:
      xattr -d com.apple.quarantine "$(brew --prefix)/bin/openports-cli"
  EOS
end
