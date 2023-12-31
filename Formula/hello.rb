class Hello < Formula
  desc "Test repo: hello world."
  homepage "https://test.dofufa.com/"
  url "https://github.com/dofufa/homebrew-hello/archive/v2.tar.gz"
  sha256 "ee45e8766c66bfe21f4cb515e49c5e22ad255b42452c5a9010a5b7918d41ba74"
  head "https://github.com/dofufa/homebrew-hello.git", branch: "main"
  license "MIT"
  revision 1

  ## new DSL for dependency detection 
  ## learn more: https://brew.sh/2019/11/27/homebrew-2.2.0/
  ## uses_from_macos "php"

  ## alternative to 'uses_from_macos'
  ## homebrew formula detecting php in linux environment
  has_php = system "type php >/dev/null 2>&1"
  if !has_php
    ohai "DOFUFA: we need php"
    depends_on "php"
  else
    ohai "DOFUFA: php already installed"
    system "php -v"
  end
  
  def install
    ohai "DOFUFA: *drumroll* ... installing dofufa-hello ";
    bin.install "bin/hello.php" => "dofufa-hello"
  end

  test do
    system bin/"dofufa-hello", "--version"
  end
end
