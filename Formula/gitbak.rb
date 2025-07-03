
class Gitbak < Formula
  desc "Get your dotfiles/config files backed up and managed with Git."
  homepage "https://github.com/kennyparsons/gitbak"
  url "https://github.com/kennyparsons/gitbak/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fbf48ddc46d9b3963cddb724582d32b63bcb33141fd59a542884f2f8f74594f4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/gitbak", "--version"
  end
end
