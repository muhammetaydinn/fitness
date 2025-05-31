# 💪 Fitness Program App
This is a **simple, offline-first fitness program builder app** made with Flutter.

Wanna try it right away without building?

👉 [Download APKs from Releases](https://github.com/muhammetaydinn/fitness/releases/latest)

Users can create workout programs, add exercises, and filter by muscle groups — **all without needing to log in**.  
If you **don’t want to back up your data**, login is not required at all. Just open the app and start grinding 💥

Wanna sync your data across devices?  
Then you’ll need to set up our backend service — check out the [fitnessBackend](https://github.com/muhammetaydinn/fitnessBackend) repo for that.

Built for speed, privacy, and that no-excuses gym rat lifestyle 🐀💪

## 🔧 To-Do

- [ ] **Muscle filter**: Tap a muscle group to filter exercises accordingly  
- [ ] **Multi-language support**: Add translations  
- [ ] **Feedback UI**: Add loading spinners, error messages, empty state screens  
- [ ] **(Optional)** Use `CustomPaint` for muscle group selection (if time allows)  

---

## 🕓 Not a Priority (for later maybe)

- [ ] Use radius buttons on movement detail screen to show muscles, equipment, etc.  
- [ ] If user is not logged in, show backup restriction message → redirect to login  
- [ ] Add filters for exercises (muscle group, equipment, etc.)  
- [ ] Add shimmer effect while images are loading  
- [ ] Remove all debug prints before release  

---

## ✅ Done

- [x] Fixed bug where identical programs were duplicating exercises 3x  
- [x] Asset JSON data is read once and cached in GetX model  
- [x] Exercises can be reordered via drag & drop  
- [x] Refactored to use mostly stateless widgets  
- [x] Cleared local storage on login/logout  
- [x] Profile screen shows user info  
- [x] Password change feature added  
- [x] "Forgot password" handled by Spring backend  
- [x] App icon and splash screen added  
- [x] Email validation implemented  
- [x] Switched to Dio, all `fromJson` → `fromMap` conversion done  
- [x] Internet connectivity checker and timeout logic added  
- [x] Program syncing now uses `access_token` to fetch user-specific data  
- [x] Programs without exercises are no longer synced  
- [x] 403 errors (session expired / login from another device) now redirect to login screen  
- [x] Spring Boot + MySQL containerized with Docker  
- [x] Deployed to production  
- [x] Cleaned up the UI  
- [x] Moved exercise delete logic from program detail to program create screen  
- [x] **Guest mode**: Let users use the app without logging in, save data locally  
---

> 🧠 **Heads-up:**  
> - Don’t forget to clean up `print()` statements before shipping  