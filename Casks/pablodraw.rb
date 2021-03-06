cask "pablodraw" do
  version "3.2.1"
  sha256 "91a89ac33ba3e064a7a2b44d5c7c271cbd1303882874e7ce159b8fb058589301"

  url "http://download.picoe.ca/pablodraw/#{version.major_minor}/PabloDrawMac-#{version}.zip"
  name "PabloDraw"
  desc "Ansi/Ascii text and RIPscrip editor/viewer"
  homepage "http://picoe.ca/products/pablodraw/"

  livecheck do
    url :homepage
    regex(/href=.*?PabloDrawMac[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "PabloDraw.app"

  zap trash: [
    "~/Library/Application Support/ca.picoe.pablodraw",
    "~/Library/Preferences/ca.picoe.pablodraw.plist",
    "~/Library/Saved Application State/ca.picoe.pablodraw.savedState",
  ]
end
