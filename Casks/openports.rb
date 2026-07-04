cask "openports" do
  version "2.4.1"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "4d6ab24eb866658a738574a3eb0e6297260946308f46968ad940a6929b965273"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "718d8805326a14756ab67895ee5b8d8da732d7e28defeccf8bd206488fa031e8"
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
