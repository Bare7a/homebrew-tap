# Bare7a/BarSQL's release workflow writes this from its packaging/homebrew/barsql.rb, with the version and digests.
cask "barsql" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.9"
  sha256 arm:   "a879f05515a85d9a456dadd315e8bcd2fd7c5fbec8a51fe82aecc093aaef0eff",
         intel: "c5995caaface015d38d8bc5d4944920c74e03a2adbe538241e7e3c2fcdb91794"

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
