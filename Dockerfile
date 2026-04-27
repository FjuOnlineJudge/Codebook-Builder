FROM ubuntu:24.04
LABEL maintainer="allem40306 <allem40306@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

# =========================
# system + texlive (APT版)
# =========================
RUN apt-get update && apt-get install -y \
    texlive-xetex \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-lang-chinese \
    texlive-pictures \
    latexmk \
    fontconfig \
    fonts-noto-cjk \
    fonts-inconsolata \
    perl \
    && rm -rf /var/lib/apt/lists/*

# =========================
# fonts cache
# =========================
RUN fc-cache -fv

# =========================
# working directory
# =========================
VOLUME ["/storage"]
WORKDIR /storage

CMD ["bash"]