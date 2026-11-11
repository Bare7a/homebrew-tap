# Bare7a/BarSQL's release workflow writes this from its packaging/homebrew/barsql.rb, with the version and digests.
cask "barsql" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.7"
  sha256 arm:   "951d6f00e745d2a8e221f7334654abe1169e1441d8d70bf36f82a9ab799c63f5",
         intel: "b3bfa51e081c9fc7df4ea25ea82137ecc3d295ea5daf375bb9190d84db196fd5"

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
