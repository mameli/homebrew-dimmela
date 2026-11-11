cask "dimmela" do
  version "0.2.0"
  sha256 "31cc603f93a9aeb29d4b92ca52b714fbd087a8e81e4bb57713d299987d6c2fb4"

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
