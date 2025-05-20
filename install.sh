cloudflare(){
  sudo dnf config-manager addrepo --from-repofile=https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo
  sudo dnf clean all 
  sudo dnf makecache
  sudo dnf install cloudflare-warp
}

rpmfusion(){
  sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  pkgs = (
    discord
    )
}

cloudflare
rpmfusion
