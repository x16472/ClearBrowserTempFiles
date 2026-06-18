import os
import shutil

folders = [
    os.environ.get("TEMP", ""),
    r"C:\Temp",
    r"C:\Windows\Temp",
    os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"),
    os.path.expandvars(r"%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"),
]

for folder in folders:
    if not folder or not os.path.exists(folder):
        print(f"路徑不存在：{folder}")
        continue

    print(f"\n開始清理：{folder}")

    for name in os.listdir(folder):
        full_path = os.path.join(folder, name)
        try:
            if os.path.isfile(full_path):
                os.remove(full_path)
                print(f"已刪除檔案：{name}")
            elif os.path.isdir(full_path):
                shutil.rmtree(full_path)
                print(f"已刪除資料夾：{name}")
        except Exception as e:
            print(f"刪除失敗：{name}，原因：{e}")