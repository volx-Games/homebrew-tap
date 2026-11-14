cask "room-service" do
  version "4.0.0,124"
  sha256 "b26c49a6b79086209d84b72f130e54ab78045b02542f1926d4cd86fa070a9d33"

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
