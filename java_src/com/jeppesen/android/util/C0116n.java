package com.jeppesen.android.util;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: com.jeppesen.android.util.n */
public class C0116n {

    /* renamed from: a */
    private static final String f473a = C0116n.class.getSimpleName();

    /* renamed from: a */
    public static void m456a(Bitmap bitmap, String str) {
        MediaStore.Images.Media.insertImage(JeppAndroidApp.m377q().getContentResolver(), bitmap, str, "Image added from Jeppesen App");
    }

    /* renamed from: a */
    public static void m457a(Bitmap bitmap, String str, String str2) {
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, new FileOutputStream(str2 + "/" + str + ".png"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m458a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                i += read;
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m459a(String str, String str2) {
        InputStream open;
        if (JeppAndroidApp.debugMode && !JeppAndroidApp.m375o()) {
            Log.e(f473a, "copyAssets() called before JeppAndroidApp has been initialized");
        }
        AssetManager assets = JeppAndroidApp.m377q().getAssets();
        String[] strArr = null;
        try {
            strArr = assets.list(str);
        } catch (IOException e) {
            Log.e("tag", e.getMessage());
        }
        new File(str2).mkdirs();
        for (int i = 0; i < strArr.length; i++) {
            try {
                if (str.length() == 0) {
                    if (JeppAndroidApp.debugMode) {
                        Log.d(f473a, "copyAssets() file: " + str);
                    }
                    open = assets.open(strArr[i]);
                } else {
                    if (JeppAndroidApp.debugMode) {
                        Log.d(f473a, "copyAssets() file: " + str + "/" + strArr[i]);
                    }
                    open = assets.open(str + "/" + strArr[i]);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + "/" + strArr[i]);
                m458a(open, fileOutputStream);
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (FileNotFoundException e2) {
                try {
                    if (JeppAndroidApp.debugMode) {
                        Log.d(f473a, "copyAssets() file not found");
                    }
                } catch (Exception e3) {
                    Log.e(f473a, e3.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m460a(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    m460a(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    /* renamed from: a */
    public static boolean m461a(String str) {
        if (JeppAndroidApp.debugMode && !JeppAndroidApp.m375o()) {
            Log.e(f473a, "isDirLoaded() called before JeppAndroidApp has been initialized");
        }
        try {
            if (JeppAndroidApp.debugMode) {
                Log.i(f473a, "isDirLoaded() looking for " + str);
            }
            if (new File(str).exists()) {
                if (JeppAndroidApp.debugMode) {
                    Log.i(f473a, "isDirLoaded() found " + str);
                }
                return true;
            } else if (!JeppAndroidApp.debugMode) {
                return false;
            } else {
                Log.i(f473a, "isDirLoaded() did not find " + str);
                return false;
            }
        } catch (Exception e) {
            Log.e(f473a, "isDirLoaded() exception " + e.getStackTrace());
            return false;
        }
    }
}
