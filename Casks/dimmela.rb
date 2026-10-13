cask "dimmela" do
  version "0.1.0"
  sha256 "3abc28b5250160b6451c53df73129101288d383dc8a169eac7aa4caac79d4939"

  url "https://github.com/mameli/Dimmela/releases/download/v#{version}/Dimmela-#{version}.zip"
  name "Dimmela"
  desc "Menu-bar dictation with on-device transcription and optional LLM rewriting"
  homepage "https://github.com/mameli/Dimmela"

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
