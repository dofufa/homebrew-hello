class Hello < Formula
  desc "Test repo: hello world."
  homepage "https://test.dofufa.com/"
  url "https://github.com/dofufa/homebrew-hello/archive/v2.tar.gz"
  sha256 "ee45e8766c66bfe21f4cb515e49c5e22ad255b42452c5a9010a5b7918d41ba74"
  head "https://github.com/dofufa/homebrew-hello.git", branch: "main"
  license "MIT"
  revision 1

  depends_on "php@7.4"

  def install
    ohai "DOFUFA: *drumroll* ... installing dofufa-hello ";
    bin.install "bin/hello.php" => "dofufa-hello"
  end

  test do
    system bin/"dofufa-hello", "--version"
  end
end
