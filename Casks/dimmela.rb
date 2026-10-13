cask "dimmela" do
  version "0.1.4"
  sha256 "794c67cbcc10feb1569a58aa2847412f7c5a071cf7633ae93654a833f0fbe389"

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
