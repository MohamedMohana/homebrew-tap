cask "openports" do
  version "2.5.1"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "1300c7e6292be662ef5da305d7798d8affa2ad5bb91464335f1ccfb6ff91e420"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "26cf084319ab6c011d2c416b0dbc1a86e3c31acdbadcdcaab95554d48d1cb7e5"
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
