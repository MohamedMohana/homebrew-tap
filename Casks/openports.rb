cask "openports" do
  version "2.3.0"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "206b2c118d19950786f850fae5567663dd1ae07ebebea1e165cd8cc8595bfc27"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "5923c170a8b4ea34eccb7371d0157db3876062fe10042c2e7da752f2587c1b9b"
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
