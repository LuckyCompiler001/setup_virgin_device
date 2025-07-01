# Setup script for fresh Windows 11 machine (PowerShell)
# Installs Python, VS Code, essential dev tools and packages

Write-Host "🛠️ Starting first-time dev environment setup..."

# --- Install Python ---
Write-Host "🐍 Installing Python 3.11..."
winget install --id Python.Python.3.11 -e --source winget

# --- Add python to PATH (usually handled automatically, but ensure reload) ---
$env:Path += ";$env:LOCALAPPDATA\Programs\Python\Python311\Scripts;$env:LOCALAPPDATA\Programs\Python\Python311"

# --- Install VS Code ---
Write-Host "💻 Installing Visual Studio Code..."
winget install --id Microsoft.VisualStudioCode -e

# --- Optional: Windows Terminal ---
Write-Host "📟 Installing Windows Terminal..."
winget install --id Microsoft.WindowsTerminal -e

# --- Wait for Python to be accessible ---
Write-Host "⏳ Waiting for Python to initialize..."
Start-Sleep -Seconds 5

# --- Upgrade pip and install packages ---
Write-Host "📦 Installing core Python packages..."
python -m pip install --upgrade pip

# --- Install packages for dev, OpenCV, RAG, SfM ---
pip install ipython jupyter black isort
pip install opencv-python-headless scikit-image matplotlib numpy
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip install langchain openai faiss-cpu tiktoken chromadb sentence-transformers
pip install requests tqdm pyyaml rich

# --- Save to requirements.txt for future use ---
pip freeze > requirements.txt

# --- Create .env template ---
"OPENAI_API_KEY=your-api-key-here" | Out-File -Encoding UTF8 -NoNewline .env

Write-Host "✅ All done!"
Write-Host "You can now run Python, OpenCV, LangChain, etc."
Write-Host "`n📂 Tip: Use 'python -m venv dev-env' to isolate future projects.`n"
