# Bare7a/BarSQL's release workflow writes this from its packaging/homebrew/barsql.rb, with the version and digests.
cask "barsql" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.8"
  sha256 arm:   "87582afbc1635aed3ad052daac840588b97a53bf4ff5de2f697fb7074d0f01f7",
         intel: "ff638cb4ed64d31907540df677cf5bacc2e6c8f8db016a3897865727f49a13a9"

  url "https://github.com/Bare7a/BarSQL/releases/download/v#{version}/BarSQL-darwin-#{arch}.zip"
  name "BarSQL"
  desc "SQL client for PostgreSQL, MySQL, SQL Server, ClickHouse, SQLite and Turso"
  homepage "https://barsql.bare7a.eu/"

  auto_updates true
  depends_on macos: :monterey

  app "BarSQL.app"

  uninstall quit: "eu.bare7a.barsql"

  zap trash: [
    "#{appdir}/BarSQL-data",
    "~/Library/Application Support/BarSQL-data",
    "~/Library/Preferences/eu.bare7a.barsql.plist",
  ]
end
