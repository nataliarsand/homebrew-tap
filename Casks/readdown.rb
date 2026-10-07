cask "readdown" do
  version "1.18.2"
  sha256 "a5a50c024ac761e9a52a8342f4950460d911b81d37cdff453a1491d992e90768"

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
