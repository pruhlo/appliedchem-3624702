# appliedchem-3624702
Repository containing datasets, Jupyter notebooks, and scripts used in the preparation of the manuscript. Includes data preprocessing, model training, evaluation, and result visualization.

# ML Environment (Jupyter + RDKit + Dependencies)

This project provides a Dockerized machine learning environment with Jupyter Notebook, RDKit, and additional Python packages listed in `requirements.txt`.

## 📦 Build the Docker Image

Make sure you have Docker installed. Then build the image using:

```bash
docker build -t ml-environment .
```

## ▶️ Run the Container with Mounted Folder

To start the container and mount a local `notebooks` folder to `/opt/notebooks` in the container:

### On Linux/macOS:
```bash
docker run -it --rm -p 8888:8888 -v $(pwd)/appliedchem-3624702:/opt/notebooks ml-environment
```

### On Windows (PowerShell):
```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}\appliedchem-3624702:/opt/notebooks ml-environment
```

## 📓 Accessing Jupyter Notebook

After starting the container, you will see a link like:

```
http://127.0.0.1:8888/?token=your_token_here
```

Open it in your browser to use the Jupyter environment.

