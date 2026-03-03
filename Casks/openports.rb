cask "openports" do
  version "2.0.3"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.3/OpenPorts-v2.0.3-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "f340ae8b2ee658fb457df93e73d918613315f5536e83f1422c5ff9f02ed81b53"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v2.0.3/OpenPorts-v2.0.3-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "671afdaa6dbe17fba7f2d5aa7c41852dfbd9157900e56c27258bd2c5af45808c"
  end

  name "OpenPorts"
  desc "Lightweight macOS menu bar app for monitoring local ports and processes with safety ratings and real-time preference updates"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
