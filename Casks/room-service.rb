cask "room-service" do
  version "4.0.1,125"
  sha256 "6edf783498c260e9db80d136d85f67e10ea507a23a76d657059ea7aab288490b"

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
