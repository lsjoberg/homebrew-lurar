cask "lurar" do
  version "0.11.1"
  sha256 "8335424bf8dfb3ab3821a11c808236444e2499357ec557f228c8a9bc51c7ec9f"

  url "https://github.com/lsjoberg/lurar/releases/download/v#{version}/Lurar-#{version}.dmg",
      verified: "github.com/lsjoberg/lurar/"
  name "Lurar"
  desc "System-wide parametric headphone EQ with the AutoEq catalog built in"
  homepage "https://lurar.app/"

  livecheck do
    url "https://lurar.app/appcast.xml"
    strategy :sparkle do |item|
      item.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lurar.app"

  zap trash: [
    "~/Library/Application Support/Lurar",
    "~/Library/Caches/app.lurar.Lurar",
    "~/Library/HTTPStorages/app.lurar.Lurar",
    "~/Library/Preferences/app.lurar.Lurar.plist",
  ]
end
