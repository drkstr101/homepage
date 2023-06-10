FROM gitpod/workspace-full
USER gitpod


RUN DEBIAN_FRONTEND=noninteractive sudo add-apt-repository ppa:cncf-buildpacks/pack-cli -y \
    && sudo apt-get update \
    && DEBIAN_FRONTEND=noninteractive sudo apt-get install pack-cli -y \
    && sudo rm -rf /var/lib/apt/lists/*
# Setup default ruby, and install global dev tools
# Finally, set the gempath into the worspace for better persistance
# RUN _ruby_version=ruby-3.2.1 \
#     && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
#     && bash -lc "rvm reinstall ${_ruby_version} && \
#                  rvm use ${_ruby_version} --default" \
#     && printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
#     && printf "{ rvm use \$(rvm current); } >/dev/null 2>&1\n" >> "$HOME/.bashrc.d/70-ruby"
