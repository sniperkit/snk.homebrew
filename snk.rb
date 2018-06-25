class Snk < Formula
  VERSION="0.0.1".freeze

  desc "The sniperkit is a terminal assistant, command launcher, GitHub client, insights gatherer, etc..."
  homepage "https://github.com/sniperkit"
  version VERSION
  url "https://github.com/sniperkit/snk.dev-assistant/releases/download/v#{VERSION}/snk_v#{VERSION}_darwin_amd64.tar.gz"
  sha256 "1a02325535d2c5b59681c38baa59c18aa58e4d943f2531ddf84aba5cbfc7275a"
  head "https://github.com/sniperkit/snk.dev-assistant.git", :branch => "sniperkit"

  def install
    bin.install 'snk'
  end

  test do
    system "#{bin}/snk", "-v"
  end
end