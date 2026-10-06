cask "readdown" do
  version "1.18.1"
  sha256 "553622d8649e669a81693ec4068d9bc12bd99d6691d8d42facdc400b7bb5a017"

  url "https://github.com/nataliarsand/readdown/releases/download/v#{version}/Readdown.dmg",
      verified: "github.com/nataliarsand/readdown/"
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
