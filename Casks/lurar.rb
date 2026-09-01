cask "lurar" do
  version "0.11.0"
  sha256 "9d07bed9e375d2f512a33b1bfb5faf65fdfccabe31e7cf8ae79a979591f485c9"

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
