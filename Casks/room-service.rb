cask "room-service" do
  version "3.5.0,123"
  sha256 "a8bef86f8590559a14585282f39592d9385477dec39236aa7f0f3376af8f39d1"

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
