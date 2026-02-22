# ScreenResolutionSwitch

Easily switch screen resolution and refresh rate using **Batch** and **PowerShell** scripts, with visual toast notifications in Windows.

This project uses [QRes](https://www.softpedia.com/get/Multimedia/Video/Other-VIDEO-Tools/QRes.shtml) (by Anders Kjersem) to apply resolution/refresh changes and [BurntToast](https://github.com/Windos/BurntToast) to display toast notifications.

---

## ⚙️ Requirements

- **Windows 10/11**
- **PowerShell 5+**
- Install BurntToast module (only once):
  ```powershell
  Install-Module -Name BurntToast -Force -Scope CurrentUser
  ```
- Allow script execution if needed:
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

---

## 🚀 Usage

### 1. Interactive Menu
Run the `.bat` file without parameters:
```bat
ResolutionSwitch.bat
```

You will see a menu:
```
1. 1080p 60Hz
2. 1080p 144Hz
3. 1440p 60Hz
4. 1440p 144Hz
5. 4K 60Hz
6. 4K 75Hz
7. 4K 144Hz
```

Type the number and the resolution will be applied.

### 2. Direct Execution
Pass the number as a parameter to apply directly without showing the menu:
```bat
ResolutionSwitch.bat 4
```
This example applies **1440p 144Hz** immediately.

---

## 🔔 Notifications

After applying the resolution, PowerShell displays a toast notification confirming the change, with a custom icon.

---

## 🛠️ Customization

- To add new resolutions, edit `ResolutionSwitch.bat` and include new entries in the resolution “array”.
- To change the notification icon, modify the `-AppLogo` parameter in `ResolutionSwitch.ps1`.

---

## 📖 License

This project is for personal and educational use.  
The **QRes** utility is distributed under its own license by Anders Kjersem.

---

## ✨ Credits

- [QRes](https://www.softpedia.com/get/Multimedia/Video/Other-VIDEO-Tools/QRes.shtml) — Anders Kjersem  
- [BurntToast](https://github.com/Windos/BurntToast) — Windos  
- Scripts and integration — Rafael Galvan
