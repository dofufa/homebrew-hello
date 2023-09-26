class Hello < Formula
  desc "Test repo: hello world."
  homepage "https://test.dofufa.com/"
  url "https://github.com/dofufa/homebrew-hello/archive/v1.tar.gz"
  sha256 ""
  head "https://github.com/dofufa/homebrew-hello.git", branch: "main"
  license "MIT"
  revision 1

  def install
    ohai "DOFUFA: *drumroll* ... installing dofufa-hello ";
    bin.install "bin/hello.php" => "dofufa-hello"
  end

  test do
    system bin/"dofufa-hello", "--version"
  end
end
