extend(){
  #install terra
  sudo dnf install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
}

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

ffmpeg(){
  sudo dnf swap ffmpeg-free ffmpeg --allowerasing
  sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
  sudo dnf install intel-media-driver
}

cloudflare
rpmfusion
