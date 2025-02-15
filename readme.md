# 📌 Docker Nginx Webprojekt

## 🔹 1. Repository klonen
Öffnen Sie ein Terminal oder PowerShell und klonen Sie das Repository:
```powershell
git clone https://github.com/zManix/uebungsprojekt.git
cd uebungsprojekt
```

---

## 🔹 2. Docker-Container starten
```powershell
docker-compose -f pfad/docker-compose/docker-compose.yml up -d --build
```
➡️ Das `-d` sorgt dafür, dass die Container im Hintergrund laufen.

🔍 **Überprüfung:**  
```powershell
docker ps
```

---

## 🔹 3. Webseite aufrufen
Öffnen Sie im Browser:
```
http://localhost:8080
```
Hier sehen Sie eine **statische HTML-Webseite mit Bildern**, gehostet mit **Nginx**.

Falls Port 8080 bereits belegt ist, siehe Abschnitt **Port-Probleme beheben** unten.

---

## 🔹 4. Container stoppen und entfernen
Falls Sie die Umgebung beenden möchten:
```powershell
docker-compose down
```
Falls Sie den Container manuell stoppen wollen:
```powershell
docker stop webprojekt
docker rm webprojekt
```

---

## 🔹 5. Falls ein Port-Fehler auftritt
Falls **Port 8080 bereits in Benutzung** ist, ändern Sie in `docker-compose.yml`:

🔹 **Datei öffnen:**
```powershell
notepad pfad/docker-compose/docker-compose.yml
```
🔹 **Ändern Sie die Ports:**
```yaml
ports:
  - "9090:80"
```
🔹 **Speichern & Neustarten:**
```powershell
docker-compose down
docker-compose up -d --build
```
Dann auf **`http://localhost:9090`** zugreifen.

---

## 🔹 6. Falls Docker Desktop oder WSL2 Fehler auftreten
Falls Sie den Fehler **"The network name cannot be found"** in Docker Desktop sehen, versuchen Sie Folgendes:
```powershell
wsl --shutdown
wsl --unregister docker-desktop
wsl --unregister docker-desktop-data
Start-Process "C:\Program Files\Docker\Docker\Docker Desktop.exe"
```
Falls WSL2 nicht korrekt installiert ist:
```powershell
wsl --install
wsl --set-default-version 2
```
Falls Docker immer noch nicht läuft, prüfen Sie in Docker Desktop unter **Settings > Resources > WSL Integration**, ob die Integration aktiviert ist.

---

## 📬 Support
Falls Probleme auftreten, kontaktieren Sie mich oder öffnen Sie ein **Issue auf GitHub**.

---

## 🚀 Viel Erfolg mit der Installation!
