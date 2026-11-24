cask "room-service" do
  version "4.1.0,126"
  sha256 "65ab820d8b5643d8283133d2af1e0e4dc09734b45b2a6fdfdca2b2a1712e816e"

  url "https://downloads.roomservices.pro/sparkle/RoomService-#{version.csv.first}-#{version.csv.second}.zip"
  name "Room Service"
  desc "Developer command center for projects, ports, cleanup and coding agents"
  homepage "https://roomservices.pro/"

  livecheck do
    url "https://downloads.roomservices.pro/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RoomService.app", target: "Room Service.app"
  binary "#{appdir}/Room Service.app/Contents/MacOS/roomservice-cli", target: "roomservice"

  zap trash: [
    "~/.room-service-swift",
    "~/Library/Preferences/com.roomservice.app.plist",
  ]
end
