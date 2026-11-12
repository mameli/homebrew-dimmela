cask "dimmela" do
  version "0.2.2"
  sha256 "22bdb63f70be9a402549b3723ca2fb7314d37582f56422f79b89682e17fdaa41"

  url "https://github.com/mameli/Dimmela/releases/download/v#{version}/Dimmela-#{version}.dmg"
  name "Dimmela"
  desc "Menu-bar dictation with on-device transcription and optional LLM rewriting"
  homepage "https://dimmela.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Dimmela.app"

  uninstall quit: "app.dimmela.Dimmela"

  zap trash: [
    "~/Library/Application Support/Dimmela",
    "~/Library/Caches/app.dimmela.Dimmela",
    "~/Library/HTTPStorages/app.dimmela.Dimmela",
    "~/Library/Preferences/app.dimmela.Dimmela.plist",
  ]
end
