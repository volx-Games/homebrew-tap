cask "room-service" do
  version "3.4.0,122"
  sha256 "26df0124625aa508f491650032ead4e64fc91a1bceb0cd4c997bd919c0a671e4"

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
