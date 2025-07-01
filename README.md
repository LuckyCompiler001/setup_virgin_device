# 🛠️ Windows Dev Environment Setup (First-Time)

This repo provides a PowerShell script to bootstrap a brand-new Windows 11 machine with all the tools and libraries needed for Python development, including OpenCV, RAG (Retrieval-Augmented Generation), and more.

---

## 🚀 Features

- Installs Python 3.11 via `winget`
- Installs Visual Studio Code and Windows Terminal
- Installs common Python packages:
  - `opencv-python-headless`, `numpy`, `matplotlib`, `scikit-image`
  - `langchain`, `faiss-cpu`, `chromadb`, `sentence-transformers`
  - `torch`, `tqdm`, `requests`, `jupyter`, and more
- Creates a `.env` file for API keys
- Outputs a `requirements.txt` for future reuse

---

## ⚙️ Setup Instructions

### ✅ 1. Clone this repo
Open PowerShell and run:

```powershell
git clone https://github.com/YourUsername/setup_virgin_device.git
cd setup_virgin_device
