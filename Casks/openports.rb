cask "openports" do
  version "2.5.0"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "45d00563128c15dbca98def982feb4394693622b46aae4f35814739021d9b1e8"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "9e30750575bcb703b2c5b9c8ee305f405c1b4b8387703eeff8592aed869b8eda"
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
