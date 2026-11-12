cask "dimmela" do
  version "0.2.1"
  sha256 "0ec66d880c804e77dde8df7893f5d2f46182e7039bf7c7814edad529f85e786a"

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
