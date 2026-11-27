# Bare7a/BarSQL's release workflow writes this from its packaging/homebrew/barsql.rb, with the version and digests.
cask "barsql" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.1"
  sha256 arm:   "8ac39ebb974c7102a77c8274fa33a2752a738238b7276c67f735dea5f2c1bc8b",
         intel: "644a2795ed73317c87d84cc52dfcaabe762ae26a96eb70afa97b84c7d940ed54"

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
