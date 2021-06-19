package com.jeppesen.android.util;

import android.os.Environment;
import android.util.Log;
import com.jeppesen.jeppview.jtca.data.EmbeddedFileInfo;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* renamed from: com.jeppesen.android.util.p */
public class C0118p {

    /* renamed from: a */
    private static final String f475a = C0118p.class.getSimpleName();

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0275 A[SYNTHETIC, Splitter:B:109:0x0275] */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x027a A[Catch:{ IOException -> 0x0283 }] */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x027f A[Catch:{ IOException -> 0x0283 }] */
    /* JADX WARNING: Removed duplicated region for block: B:152:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:154:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01a2 A[SYNTHETIC, Splitter:B:66:0x01a2] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x01a7 A[Catch:{ IOException -> 0x01b1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x01ac A[Catch:{ IOException -> 0x01b1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0212 A[SYNTHETIC, Splitter:B:88:0x0212] */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0217 A[Catch:{ IOException -> 0x0221 }] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x021c A[Catch:{ IOException -> 0x0221 }] */
    /* renamed from: a */
    public static int m465a(String str, String str2, String str3) {
        FileInputStream fileInputStream;
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2;
        FileInputStream fileInputStream2;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        int i = 0;
        FileOutputStream fileOutputStream = null;
        ZipInputStream zipInputStream3 = null;
        FileInputStream fileInputStream3 = null;
        FileOutputStream fileOutputStream2 = null;
        String externalStorageState = Environment.getExternalStorageState();
        if (!"mounted".equals(externalStorageState)) {
            if ("mounted_ro".equals(externalStorageState)) {
                Log.w(f475a, "ExternalStorageState: READ_ONLY!");
            } else {
                Log.e(f475a, "ExternalStorageState: FUBAR!!");
            }
        }
        try {
            if (!m468a(str)) {
                Log.e(f475a, "Download file " + str + " doesn't exist!");
                if (0 != 0) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        Log.e(f475a, "Exception closing unzip streams: " + e.getMessage());
                        return -1;
                    }
                }
                if (0 != 0) {
                    fileInputStream3.close();
                }
                if (0 == 0) {
                    return -1;
                }
                zipInputStream3.close();
                return -1;
            } else if (m468a(str3) || new File(str3).mkdir()) {
                fileInputStream2 = new FileInputStream(str);
                try {
                    zipInputStream2 = new ZipInputStream(new BufferedInputStream(fileInputStream2));
                    BufferedOutputStream bufferedOutputStream2 = null;
                    while (true) {
                        try {
                            ZipEntry nextEntry = zipInputStream2.getNextEntry();
                            if (nextEntry == null) {
                                break;
                            } else if (!nextEntry.isDirectory() && (str2 == null || str2.length() == 0 || nextEntry.getName().contains(str2))) {
                                String name = nextEntry.getName();
                                int lastIndexOf = name.lastIndexOf(47);
                                String substring = lastIndexOf > 0 ? name.substring(lastIndexOf + 1) : name;
                                try {
                                    Log.d(f475a, "Extracting: " + nextEntry);
                                    byte[] bArr = new byte[65536];
                                    FileOutputStream fileOutputStream3 = new FileOutputStream(str3 + File.separatorChar + substring.toLowerCase());
                                    try {
                                        BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(fileOutputStream3, 65536);
                                        while (true) {
                                            try {
                                                int read = zipInputStream2.read(bArr, 0, 65536);
                                                if (read == -1) {
                                                    break;
                                                }
                                                bufferedOutputStream3.write(bArr, 0, read);
                                            } catch (Exception e2) {
                                                e = e2;
                                                bufferedOutputStream = bufferedOutputStream3;
                                                fileOutputStream = fileOutputStream3;
                                                try {
                                                    Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage(), e);
                                                    bufferedOutputStream.flush();
                                                    bufferedOutputStream.close();
                                                    if (fileOutputStream != null) {
                                                        try {
                                                            fileOutputStream.close();
                                                        } catch (IOException e3) {
                                                            Log.e(f475a, "Exception closing unzip streams: " + e3.getMessage());
                                                            return -2;
                                                        }
                                                    }
                                                    if (fileInputStream2 != null) {
                                                        fileInputStream2.close();
                                                    }
                                                    if (zipInputStream2 == null) {
                                                        return -2;
                                                    }
                                                    zipInputStream2.close();
                                                    return -2;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    bufferedOutputStream2 = bufferedOutputStream;
                                                    bufferedOutputStream2.flush();
                                                    bufferedOutputStream2.close();
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                bufferedOutputStream2 = bufferedOutputStream3;
                                                bufferedOutputStream2.flush();
                                                bufferedOutputStream2.close();
                                                throw th;
                                            }
                                        }
                                        i++;
                                        try {
                                            bufferedOutputStream3.flush();
                                            bufferedOutputStream3.close();
                                            bufferedOutputStream2 = bufferedOutputStream3;
                                            fileOutputStream = fileOutputStream3;
                                        } catch (IOException e4) {
                                            e = e4;
                                            fileOutputStream = fileOutputStream3;
                                            fileInputStream = fileInputStream2;
                                            zipInputStream = zipInputStream2;
                                            try {
                                                Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage(), e);
                                                if (fileOutputStream != null) {
                                                }
                                                if (fileInputStream != null) {
                                                }
                                                if (zipInputStream != null) {
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                fileInputStream2 = fileInputStream;
                                                zipInputStream2 = zipInputStream;
                                                if (fileOutputStream != null) {
                                                    try {
                                                        fileOutputStream.close();
                                                    } catch (IOException e5) {
                                                        Log.e(f475a, "Exception closing unzip streams: " + e5.getMessage());
                                                        throw th;
                                                    }
                                                }
                                                if (fileInputStream2 != null) {
                                                    fileInputStream2.close();
                                                }
                                                if (zipInputStream2 != null) {
                                                    zipInputStream2.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            fileOutputStream = fileOutputStream3;
                                            if (fileOutputStream != null) {
                                            }
                                            if (fileInputStream2 != null) {
                                            }
                                            if (zipInputStream2 != null) {
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        bufferedOutputStream = bufferedOutputStream2;
                                        fileOutputStream = fileOutputStream3;
                                        Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage(), e);
                                        bufferedOutputStream.flush();
                                        bufferedOutputStream.close();
                                        if (fileOutputStream != null) {
                                        }
                                        if (fileInputStream2 != null) {
                                        }
                                        if (zipInputStream2 == null) {
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        bufferedOutputStream2.flush();
                                        bufferedOutputStream2.close();
                                        throw th;
                                    }
                                } catch (Exception e7) {
                                    e = e7;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage(), e);
                                    bufferedOutputStream.flush();
                                    bufferedOutputStream.close();
                                    if (fileOutputStream != null) {
                                    }
                                    if (fileInputStream2 != null) {
                                    }
                                    if (zipInputStream2 == null) {
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    bufferedOutputStream2.flush();
                                    bufferedOutputStream2.close();
                                    throw th;
                                }
                            }
                        } catch (IOException e8) {
                            e = e8;
                            fileInputStream = fileInputStream2;
                            zipInputStream = zipInputStream2;
                            Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage(), e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e9) {
                                    Log.e(f475a, "Exception closing unzip streams: " + e9.getMessage());
                                    return -3;
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (zipInputStream != null) {
                                return -3;
                            }
                            zipInputStream.close();
                            return -3;
                        } catch (Throwable th8) {
                            th = th8;
                            if (fileOutputStream != null) {
                            }
                            if (fileInputStream2 != null) {
                            }
                            if (zipInputStream2 != null) {
                            }
                            throw th;
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e10) {
                            Log.e(f475a, "Exception closing unzip streams: " + e10.getMessage());
                        }
                    }
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    if (zipInputStream2 != null) {
                        zipInputStream2.close();
                    }
                    return i;
                } catch (IOException e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    zipInputStream = null;
                    Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage(), e);
                    if (fileOutputStream != null) {
                    }
                    if (fileInputStream != null) {
                    }
                    if (zipInputStream != null) {
                    }
                } catch (Throwable th9) {
                    th = th9;
                    zipInputStream2 = null;
                    if (fileOutputStream != null) {
                    }
                    if (fileInputStream2 != null) {
                    }
                    if (zipInputStream2 != null) {
                    }
                    throw th;
                }
            } else {
                Log.e(f475a, "Unable to create temp directory " + str3);
                if (0 != 0) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e12) {
                        Log.e(f475a, "Exception closing unzip streams: " + e12.getMessage());
                        return -1;
                    }
                }
                if (0 != 0) {
                    fileInputStream3.close();
                }
                if (0 == 0) {
                    return -1;
                }
                zipInputStream3.close();
                return -1;
            }
        } catch (IOException e13) {
            e = e13;
            fileInputStream = null;
            zipInputStream = null;
            Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage(), e);
            if (fileOutputStream != null) {
            }
            if (fileInputStream != null) {
            }
            if (zipInputStream != null) {
            }
        } catch (Throwable th10) {
            th = th10;
            fileInputStream2 = null;
            zipInputStream2 = null;
            if (fileOutputStream != null) {
            }
            if (fileInputStream2 != null) {
            }
            if (zipInputStream2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:104:0x0250 A[SYNTHETIC, Splitter:B:104:0x0250] */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0255 A[Catch:{ IOException -> 0x025e }] */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x025a A[Catch:{ IOException -> 0x025e }] */
    /* JADX WARNING: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x017d A[SYNTHETIC, Splitter:B:61:0x017d] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0182 A[Catch:{ IOException -> 0x018c }] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0187 A[Catch:{ IOException -> 0x018c }] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x01ed A[SYNTHETIC, Splitter:B:83:0x01ed] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01f2 A[Catch:{ IOException -> 0x01fc }] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01f7 A[Catch:{ IOException -> 0x01fc }] */
    /* renamed from: a */
    public static int m466a(String str, List list, String str2) {
        FileInputStream fileInputStream;
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2;
        FileInputStream fileInputStream2;
        Throwable th;
        BufferedOutputStream bufferedOutputStream;
        int i = 0;
        FileOutputStream fileOutputStream = null;
        ZipInputStream zipInputStream3 = null;
        FileInputStream fileInputStream3 = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            if (!m468a(str)) {
                Log.e(f475a, "Download file " + str + " doesn't exist!");
                if (0 != 0) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                        Log.e(f475a, "Exception closing unzip streams: " + e.getMessage());
                        return -1;
                    }
                }
                if (0 != 0) {
                    fileInputStream3.close();
                }
                if (0 == 0) {
                    return -1;
                }
                zipInputStream3.close();
                return -1;
            } else if (m468a(str2) || new File(str2).mkdir()) {
                fileInputStream2 = new FileInputStream(str);
                try {
                    zipInputStream2 = new ZipInputStream(new BufferedInputStream(fileInputStream2));
                    BufferedOutputStream bufferedOutputStream2 = null;
                    while (true) {
                        try {
                            ZipEntry nextEntry = zipInputStream2.getNextEntry();
                            if (nextEntry == null) {
                                break;
                            } else if (!nextEntry.isDirectory() && (list == null || list.size() == 0 || m470a(nextEntry.getName(), list))) {
                                String name = nextEntry.getName();
                                int lastIndexOf = name.lastIndexOf(47);
                                String substring = lastIndexOf > 0 ? name.substring(lastIndexOf + 1) : name;
                                try {
                                    Log.d(f475a, "Extracting: " + nextEntry);
                                    byte[] bArr = new byte[65536];
                                    FileOutputStream fileOutputStream3 = new FileOutputStream(str2 + File.separatorChar + substring.toLowerCase());
                                    try {
                                        BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(fileOutputStream3, 65536);
                                        while (true) {
                                            try {
                                                int read = zipInputStream2.read(bArr, 0, 65536);
                                                if (read == -1) {
                                                    break;
                                                }
                                                bufferedOutputStream3.write(bArr, 0, read);
                                            } catch (Exception e2) {
                                                e = e2;
                                                bufferedOutputStream = bufferedOutputStream3;
                                                fileOutputStream = fileOutputStream3;
                                                try {
                                                    Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage());
                                                    bufferedOutputStream.flush();
                                                    bufferedOutputStream.close();
                                                    if (fileOutputStream != null) {
                                                        try {
                                                            fileOutputStream.close();
                                                        } catch (IOException e3) {
                                                            Log.e(f475a, "Exception closing unzip streams: " + e3.getMessage());
                                                            return -2;
                                                        }
                                                    }
                                                    if (fileInputStream2 != null) {
                                                        fileInputStream2.close();
                                                    }
                                                    if (zipInputStream2 == null) {
                                                        return -2;
                                                    }
                                                    zipInputStream2.close();
                                                    return -2;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    bufferedOutputStream2 = bufferedOutputStream;
                                                    bufferedOutputStream2.flush();
                                                    bufferedOutputStream2.close();
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                bufferedOutputStream2 = bufferedOutputStream3;
                                                bufferedOutputStream2.flush();
                                                bufferedOutputStream2.close();
                                                throw th;
                                            }
                                        }
                                        i++;
                                        try {
                                            bufferedOutputStream3.flush();
                                            bufferedOutputStream3.close();
                                            bufferedOutputStream2 = bufferedOutputStream3;
                                            fileOutputStream = fileOutputStream3;
                                        } catch (IOException e4) {
                                            e = e4;
                                            fileOutputStream = fileOutputStream3;
                                            fileInputStream = fileInputStream2;
                                            zipInputStream = zipInputStream2;
                                            try {
                                                Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage());
                                                if (fileOutputStream != null) {
                                                }
                                                if (fileInputStream != null) {
                                                }
                                                if (zipInputStream != null) {
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                fileInputStream2 = fileInputStream;
                                                zipInputStream2 = zipInputStream;
                                                if (fileOutputStream != null) {
                                                    try {
                                                        fileOutputStream.close();
                                                    } catch (IOException e5) {
                                                        Log.e(f475a, "Exception closing unzip streams: " + e5.getMessage());
                                                        throw th;
                                                    }
                                                }
                                                if (fileInputStream2 != null) {
                                                    fileInputStream2.close();
                                                }
                                                if (zipInputStream2 != null) {
                                                    zipInputStream2.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            fileOutputStream = fileOutputStream3;
                                            if (fileOutputStream != null) {
                                            }
                                            if (fileInputStream2 != null) {
                                            }
                                            if (zipInputStream2 != null) {
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        bufferedOutputStream = bufferedOutputStream2;
                                        fileOutputStream = fileOutputStream3;
                                        Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage());
                                        bufferedOutputStream.flush();
                                        bufferedOutputStream.close();
                                        if (fileOutputStream != null) {
                                        }
                                        if (fileInputStream2 != null) {
                                        }
                                        if (zipInputStream2 == null) {
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        bufferedOutputStream2.flush();
                                        bufferedOutputStream2.close();
                                        throw th;
                                    }
                                } catch (Exception e7) {
                                    e = e7;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    Log.e(f475a, "Exception getting file: " + nextEntry + " from " + str + " Exception: " + e.getMessage());
                                    bufferedOutputStream.flush();
                                    bufferedOutputStream.close();
                                    if (fileOutputStream != null) {
                                    }
                                    if (fileInputStream2 != null) {
                                    }
                                    if (zipInputStream2 == null) {
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    bufferedOutputStream2.flush();
                                    bufferedOutputStream2.close();
                                    throw th;
                                }
                            }
                        } catch (IOException e8) {
                            e = e8;
                            fileInputStream = fileInputStream2;
                            zipInputStream = zipInputStream2;
                            Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage());
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e9) {
                                    Log.e(f475a, "Exception closing unzip streams: " + e9.getMessage());
                                    return -3;
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (zipInputStream != null) {
                                return -3;
                            }
                            zipInputStream.close();
                            return -3;
                        } catch (Throwable th8) {
                            th = th8;
                            if (fileOutputStream != null) {
                            }
                            if (fileInputStream2 != null) {
                            }
                            if (zipInputStream2 != null) {
                            }
                            throw th;
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e10) {
                            Log.e(f475a, "Exception closing unzip streams: " + e10.getMessage());
                        }
                    }
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    if (zipInputStream2 != null) {
                        zipInputStream2.close();
                    }
                    return i;
                } catch (IOException e11) {
                    e = e11;
                    fileInputStream = fileInputStream2;
                    zipInputStream = null;
                    Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage());
                    if (fileOutputStream != null) {
                    }
                    if (fileInputStream != null) {
                    }
                    if (zipInputStream != null) {
                    }
                } catch (Throwable th9) {
                    th = th9;
                    zipInputStream2 = null;
                    if (fileOutputStream != null) {
                    }
                    if (fileInputStream2 != null) {
                    }
                    if (zipInputStream2 != null) {
                    }
                    throw th;
                }
            } else {
                Log.e(f475a, "Unable to create temp directory " + str2);
                if (0 != 0) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e12) {
                        Log.e(f475a, "Exception closing unzip streams: " + e12.getMessage());
                        return -1;
                    }
                }
                if (0 != 0) {
                    fileInputStream3.close();
                }
                if (0 == 0) {
                    return -1;
                }
                zipInputStream3.close();
                return -1;
            }
        } catch (IOException e13) {
            e = e13;
            fileInputStream = null;
            zipInputStream = null;
            Log.e(f475a, "Exception unzipping file: " + str + " " + e.getMessage());
            if (fileOutputStream != null) {
            }
            if (fileInputStream != null) {
            }
            if (zipInputStream != null) {
            }
        } catch (Throwable th10) {
            th = th10;
            fileInputStream2 = null;
            zipInputStream2 = null;
            if (fileOutputStream != null) {
            }
            if (fileInputStream2 != null) {
            }
            if (zipInputStream2 != null) {
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m467a(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    m467a(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    /* renamed from: a */
    public static boolean m468a(String str) {
        return new File(str).exists();
    }

    /* renamed from: a */
    public static boolean m469a(String str, String str2) {
        File[] listFiles;
        File file = new File(str);
        return (!file.exists() || (listFiles = file.listFiles(new C0119q(str2))) == null || listFiles.length == 0) ? false : true;
    }

    /* renamed from: a */
    private static boolean m470a(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (str.contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a8 A[SYNTHETIC, Splitter:B:25:0x00a8] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ad A[Catch:{ IOException -> 0x00b1 }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0101 A[SYNTHETIC, Splitter:B:42:0x0101] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0106 A[Catch:{ IOException -> 0x010a }] */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    public static EmbeddedFileInfo m471b(String str) {
        FileInputStream fileInputStream;
        ZipInputStream zipInputStream;
        Throwable th;
        ZipInputStream zipInputStream2 = null;
        FileInputStream fileInputStream2 = null;
        EmbeddedFileInfo embeddedFileInfo = new EmbeddedFileInfo();
        try {
            if (!m468a(str)) {
                Log.e(f475a, "Download file " + str + " doesn't exist!");
                if (0 != 0) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                        Log.e(f475a, "Exception closing unzip streams: " + e.getMessage());
                        return null;
                    }
                }
                if (0 == 0) {
                    return null;
                }
                zipInputStream2.close();
                return null;
            }
            fileInputStream = new FileInputStream(str);
            try {
                zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
                while (true) {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry == null) {
                            break;
                        } else if (!nextEntry.isDirectory()) {
                            String name = nextEntry.getName();
                            long size = nextEntry.getSize();
                            embeddedFileInfo.mo492a(name);
                            embeddedFileInfo.mo491a(size);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        try {
                            Log.e(f475a, "Exception getting embedded file name: " + str + " " + e.getMessage());
                            if (fileInputStream != null) {
                            }
                            if (zipInputStream == null) {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileInputStream != null) {
                            }
                            if (zipInputStream != null) {
                            }
                            throw th;
                        }
                    }
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        Log.e(f475a, "Exception closing unzip streams: " + e3.getMessage());
                    }
                }
                if (zipInputStream != null) {
                    zipInputStream.close();
                }
                return embeddedFileInfo;
            } catch (IOException e4) {
                e = e4;
                zipInputStream = null;
                Log.e(f475a, "Exception getting embedded file name: " + str + " " + e.getMessage());
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                        Log.e(f475a, "Exception closing unzip streams: " + e5.getMessage());
                        return null;
                    }
                }
                if (zipInputStream == null) {
                    return null;
                }
                zipInputStream.close();
                return null;
            } catch (Throwable th3) {
                zipInputStream = null;
                th = th3;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e6) {
                        Log.e(f475a, "Exception closing unzip streams: " + e6.getMessage());
                        throw th;
                    }
                }
                if (zipInputStream != null) {
                    zipInputStream.close();
                }
                throw th;
            }
        } catch (IOException e7) {
            e = e7;
            fileInputStream = null;
            zipInputStream = null;
            Log.e(f475a, "Exception getting embedded file name: " + str + " " + e.getMessage());
            if (fileInputStream != null) {
            }
            if (zipInputStream == null) {
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            zipInputStream = null;
            th = th4;
            if (fileInputStream != null) {
            }
            if (zipInputStream != null) {
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m472b(File file) {
        if (!file.exists()) {
            return false;
        }
        File[] listFiles = file.listFiles();
        boolean z = false;
        for (int i = 0; i < listFiles.length; i++) {
            z = listFiles[i].isDirectory() ? m467a(listFiles[i]) : listFiles[i].delete();
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m473b(String str, String str2) {
        File file = new File(str + File.separatorChar + str2);
        return file.exists() && file.length() > 0;
    }

    /* renamed from: c */
    public static boolean m474c(String str, String str2) {
        File file = new File(str + File.separatorChar + str2);
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m475d(String str, String str2) {
        boolean z = true;
        for (File file : new File(str).listFiles(new C0119q(str2))) {
            z = file.delete();
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m476e(String str, String str2) {
        boolean z = false;
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists()) {
            if (!file2.exists()) {
                file2.mkdir();
            }
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            z = true;
            int i = 0;
            while (i < length) {
                File file3 = listFiles[i];
                boolean renameTo = file3.renameTo(new File(file2, file3.getName()));
                if (!renameTo) {
                }
                i++;
                z = renameTo;
            }
        }
        return z;
    }

    /* renamed from: f */
    public static File[] m477f(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            return file.listFiles(new C0119q(str2));
        }
        Log.e(f475a, "Directory: " + str + " doesn't exist!");
        return null;
    }
}
