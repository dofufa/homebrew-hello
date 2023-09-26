class Hello < Formula
  desc "Test repo: hello world."
  homepage "https://test.dofufa.com/"
  url "https://github.com/dofufa/homebrew-hello/archive/v1.tar.gz"
  sha256 "a0bfba64f97bfbeee4f62bf06c22bad45872a3dc44a0e0486a9e087584cc9dec"
  head "https://github.com/dofufa/homebrew-hello.git", branch: "main"
  license "MIT"
  revision 1

  depends_on "php"

  def install
    ohai "DOFUFA: *drumroll* ... installing dofufa-hello ";
    bin.install "bin/hello.php" => "dofufa-hello"
  end

  test do
    system bin/"dofufa-hello", "--version"
  end
end
