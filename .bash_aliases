xcb_dir="$(dirname $(which xcb))"
alias xcb-connect="$xcb_dir/xcb-connect.sh"
alias xcb-install-all="$xcb_dir/xcb-install-all.sh"

alias mamba-rebuild="./mambaBuildSystem.sh -o clean && eval \"$(echo -e './mambaBuildSystem.sh << 'EOF'\n3\n1\n1\n2\nEOF') \""
alias mamba-generate-pkg="eval \"$(echo -e './mambaBuildSystem.sh << 'EOF'\n4\n2\n1\n1\n1\n1.10.0\np\n2\n2\nEOF')\""
alias mamba-deploy-full="mamba-rebuild && mamba-generate-pkg && cd PAX_S920_pkg && xcb-install-all && cd .."

