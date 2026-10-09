cask "readdown" do
  version "1.19"
  sha256 "4255cfffd2f41488fbbddd7128e13379a7718a6fd08a4fdc9ebb98c7df63bdc6"

  url "https://github.com/nataliarsand/readdown/releases/download/v#{version}/Readdown.dmg"
  name "Readdown"
  desc "Markdown reader and Quick Look preview"
  homepage "https://readdown.app/"

  livecheck do
    url "https://readdown.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Readdown.app"

  zap trash: [
    "~/Library/Application Scripts/com.heya.readdown",
    "~/Library/Application Scripts/com.heya.readdown.ReadDownQuickLook",
    "~/Library/Containers/com.heya.readdown",
    "~/Library/Containers/com.heya.readdown.ReadDownQuickLook",
  ]
end
