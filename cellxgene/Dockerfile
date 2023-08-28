# syntax=docker/dockerfile:1
FROM python:3.10.12

ARG BUILD_DATE
ARG VCS_REF
ARG CELLXGENE_VERSION=1.1.2

LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.revision=$VCS_REF
LABEL org.opencontainers.image.authors="Jason Hwee <hweej@mskcc.org>"
LABEL org.opencontainers.image.url="https://github.com/hweej/single-cell-tools/tree/main/cellxgene"
LABEL org.opencontainers.image.documentation="https://github.com/hweej/single-cell-tools/tree/main/cellxgene/README.md"
LABEL org.opencontainers.image.source="https://github.com/hweej/single-cell-tools/tree/main/cellxgene"
LABEL org.opencontainers.image.title="cellxgene"
LABEL org.opencontainers.image.description="cellxgene annotator tool"
LABEL org.opencontainers.image.version=$CELLXGENE_VERSION
# LABEL org.opencontainers.image.vendor=
# LABEL org.opencontainers.image.licenses=
# LABEL org.opencontainers.image.ref.name=
# LABEL org.opencontainers.image.base.digest=
# LABEL org.opencontainers.image.base.name=

COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip \ 
    pip install cellxgene==${CELLXGENE_VERSION} \
    pip install gcsfs
    # pip install -r requirements.txt

CMD ["cellxgene"] 


