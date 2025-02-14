# 📌 Docker Nginx Webprojekt

## 🔹 1. Repository klonen
Öffnen Sie ein Terminal oder PowerShell und klonen Sie das Repository:
```powershell
git clone https://github.com/IHR_GITHUB_USERNAME/nginx-webprojekt.git
cd nginx-webprojekt
```

---

## 🔹 2. Docker-Container starten
```powershell
docker-compose up -d
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
notepad docker-compose.yml
```
🔹 **Ändern Sie die Ports:**
```yaml
ports:
  - "9090:80"
```
🔹 **Speichern & Neustarten:**
```powershell
docker-compose down
docker-compose up -d
```
Dann auf **`http://localhost:9090`** zugreifen.

---

## 📬 Support
Falls Probleme auftreten, kontaktieren Sie mich oder öffnen Sie ein **Issue auf GitHub**.

---

## 🚀 Viel Erfolg mit der Installation!

