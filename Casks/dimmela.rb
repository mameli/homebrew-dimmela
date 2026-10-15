cask "dimmela" do
  version "0.1.6"
  sha256 "437847febdf9f6bbd9ff4e4557a494a2a6f4ff58c594bda824fd1602305b7b24"

  url "https://github.com/mameli/Dimmela/releases/download/v#{version}/Dimmela-#{version}.zip"
  name "Dimmela"
  desc "Menu-bar dictation with on-device transcription and optional LLM rewriting"
  homepage "https://dimmela.app"

  livecheck do
    url :url
    strategy :github_latest
  end

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
