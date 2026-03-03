cask "openports" do
  version "2.0.5"

  on_arm do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-arm64.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "32560965198716b61248852f3e4e94713289e1ebd1a1fc103b2aad55ef151929"
  end

  on_intel do
    url "https://github.com/MohamedMohana/openports/releases/download/v#{version}/OpenPorts-v#{version}-intel.zip",
        verified: "github.com/MohamedMohana/openports/"
    sha256 "cd9f596dd12d04139c618cbb3d4b03f6bd2de57be39edce272beded62e3e862c"
  end

  name "OpenPorts"
  desc "Smart port monitoring for Mac developers"
  homepage "https://github.com/MohamedMohana/openports"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "OpenPorts.app"
end
