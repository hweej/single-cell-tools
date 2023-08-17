### Utility Scripts
A collection of utility scripts to help with tasks related to scRNA. 
1. Pre/Post processing tasks.
2. Visualization (Cellxgene)
3. TBD

## Installation
#### [Optional] Install a custom virtualenv for r-reticulate
By default, r-reticulate will create a python virtualenv at `~/.virtualenv/r-reticulate`. Instead, we can create our own and manage our python dependencies separate from the default location.

```python
python3 -m venv ./.venv
source ./.venv/bin/activate
pip install -r requirements.txt
```
Then in RScript
```R
library("reticulate")
use_virtualenv("./.venv")
loompy <- reticulate::import("loompy")
```

#### Format Conversion
[Seurat v5 installation](https://satijalab.org/seurat/articles/install)

seuratv5 to anndata (h5ad)

#### Visualization
Cellxgene
* [github](https://github.com/chanzuckerberg/cellxgene)
* [Documentation](https://github.com/chanzuckerberg/cellxgene-documentation/blob/main/desktop/launch.md)

```sh
cellxgene launch </path/to/myfile.h5ad>
```
