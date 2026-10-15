cask "dimmela" do
  version "0.1.5"
  sha256 "7ccd1338cc50475b022dff1e50fc7495df2a0b81ac7eae3cd979ef22929c5e08"

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
