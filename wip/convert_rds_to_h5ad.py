import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Simple program to convert Seurat rds files to h5ad")

    parser.add_argument('-rds')
    args = parser.parse_args()

    # Perform conversion
