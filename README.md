# appliedchem-3624702

This repository accompanies the manuscript **"Modeling of New Agents with Potential Antidiabetic Activity Based on Machine Learning Algorithms"** published in *AppliedChem* (2025, 5(4), 30). It contains the datasets, Jupyter notebooks, and scripts used to build and evaluate machine learning models for identifying compounds with potential antidiabetic activity.

## About the Research

The paper proposes a systematic workflow for discovering novel antidiabetic agents using machine learning. The authors compiled a dataset of 46 known antidiabetic drugs and more than 2,400 other pharmaceutical compounds. Descriptors were calculated using the ClassyFire taxonomic framework and Mordred, yielding over 1,800 molecular features. Multiple classification algorithms and class-balancing techniques were trained to distinguish antidiabetic from non-antidiabetic compounds, and a character-level recurrent neural network (Char-RNN) was employed to generate new SMILES strings. All data and code needed to reproduce these results are provided in this repository.

## Repository Structure

- **`data/`** – Preprocessed datasets for antidiabetic and non-antidiabetic molecules (SMILES strings, ClassyFire taxonomies, Mordred descriptors, training/validation/test splits).
- **`gauss_files/`** – Gaussian input and output files for selected molecules, used to optimize geometries.
- **`models/`** – Trained machine learning models (gradient boosting, random forest, ridge regression, and others), confusion matrices, ROC curves, and PyTorch RNN model (`RNN_models/model12.0.pt`).
- **`notebooks/`** – Jupyter notebooks for data preprocessing, feature engineering, model training, evaluation, importance analysis, and generation of new molecules.
- **`visuals/`** – Figures and tables used in the manuscript, such as confusion matrices and feature importance plots.

## ML Environment (Jupyter + RDKit + Dependencies)

This project provides a Dockerized machine learning environment with Jupyter Notebook, RDKit, and additional Python packages listed in `requirements.txt`.

### 📦 Build the Docker Image

Make sure you have Docker installed. Then build the image using:

```bash
docker build -t ml-environment .
```

### ▶️ Run the Container with Mounted Folder

To start the container and mount a local folder to `/opt/notebooks` in the container:

#### Linux/macOS:
```bash
docker run -it --rm -p 8888:8888 -v $(pwd)/appliedchem-3624702:/opt/notebooks ml-environment
```

#### Windows (PowerShell):
```powershell
docker run -it --rm -p 8888:8888 -v ${PWD}\appliedchem-3624702:/opt/notebooks ml-environment
```

### 📓 Accessing Jupyter Notebook

After starting the container, you will see a link like:

```
http://127.0.0.1:8888/?token=your_token_here
```

Open it in your browser to use the Jupyter environment.

## Citation

If you use the data, models, or any information from this repository, please cite the manuscript using one of the following formats:

**MDPI and ACS Style:**
```
Pruhlo, Y.; Iurchenko, I.; Tomenko, A. Modeling of New Agents with Potential Antidiabetic Activity Based on Machine Learning Algorithms. AppliedChem 2025, 5, 30. https://doi.org/10.3390/appliedchem5040030
```

**AMA Style:**
```
Pruhlo Y, Iurchenko I, Tomenko A. Modeling of New Agents with Potential Antidiabetic Activity Based on Machine Learning Algorithms. AppliedChem. 2025; 5(4):30. https://doi.org/10.3390/appliedchem5040030
```

**Chicago/Turabian Style:**
```
Pruhlo, Yevhen, Ivan Iurchenko, and Alina Tomenko. 2025. "Modeling of New Agents with Potential Antidiabetic Activity Based on Machine Learning Algorithms." AppliedChem 5, no. 4: 30. https://doi.org/10.3390/appliedchem5040030
```

**APA Style:**
```
Pruhlo, Y., Iurchenko, I., & Tomenko, A. (2025). Modeling of New Agents with Potential Antidiabetic Activity Based on Machine Learning Algorithms. AppliedChem, 5(4), 30. https://doi.org/10.3390/appliedchem5040030
```

