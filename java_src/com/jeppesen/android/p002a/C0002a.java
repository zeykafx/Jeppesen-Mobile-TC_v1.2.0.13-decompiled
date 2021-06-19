package com.jeppesen.android.p002a;

import android.os.Build;
import android.util.Log;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.util.C0118p;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import com.jeppesen.jeppview.jtca.ActivationNativeWrapper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.a.a */
public class C0002a {

    /* renamed from: a */
    private static final String f0a = C0002a.class.getSimpleName();

    /* renamed from: b */
    private static String f1b = null;

    /* renamed from: c */
    private static final String f2c = "activation";

    /* renamed from: d */
    private static String f3d;

    /* renamed from: e */
    private static final List f4e = new ArrayList();

    /* JADX WARNING: Removed duplicated region for block: B:66:0x0161 A[SYNTHETIC, Splitter:B:66:0x0161] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0166 A[SYNTHETIC, Splitter:B:69:0x0166] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0178 A[SYNTHETIC, Splitter:B:77:0x0178] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x017d A[SYNTHETIC, Splitter:B:80:0x017d] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0188 A[SYNTHETIC, Splitter:B:86:0x0188] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x018d A[SYNTHETIC, Splitter:B:89:0x018d] */
    /* renamed from: a */
    public static int m2a(String str, String str2, String str3, String str4) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        Throwable th;
        IOException e;
        MalformedURLException e2;
        BufferedReader bufferedReader2 = null;
        String str5 = Build.SERIAL;
        String str6 = "";
        if (str5 != null) {
            int length = str5.length();
            str6 = length >= 6 ? str5.substring(0, 6) : str5.substring(0, length);
        }
        String str7 = "AndroidTC|" + str6;
        String str8 = "http://www.jepptech.com/GenKey.asp?SerialNumber=xxx" + str + "&SiteCode=" + str2 + "&UI=no" + "&Username=" + AbstractC0130a.f573e + "|" + URLEncoder.encode(str4);
        try {
            inputStreamReader = new InputStreamReader(new URL(str8).openConnection().getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null || readLine.length() == 0) {
                        Log.e(f0a, "Nothing returned when we called the activation script!");
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                            }
                        }
                        if (inputStreamReader == null) {
                            return -1;
                        }
                        try {
                            inputStreamReader.close();
                            return -1;
                        } catch (IOException e4) {
                            return -1;
                        }
                    } else if (readLine.contains("Error=SN")) {
                        Log.d(f0a, "Invalid serial number: " + str);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e5) {
                            }
                        }
                        if (inputStreamReader == null) {
                            return -2;
                        }
                        try {
                            inputStreamReader.close();
                            return -2;
                        } catch (IOException e6) {
                            return -2;
                        }
                    } else if (readLine.contains("Error=Count")) {
                        Log.d(f0a, "Serial number: " + str + " exceeded the number of seats.");
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e7) {
                            }
                        }
                        if (inputStreamReader == null) {
                            return -3;
                        }
                        try {
                            inputStreamReader.close();
                            return -3;
                        } catch (IOException e8) {
                            return -3;
                        }
                    } else if (!readLine.contains(str3)) {
                        Log.d(f0a, "Returned siteKey:" + readLine + "doesn't contain device generated siteKey: " + str3);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e9) {
                            }
                        }
                        if (inputStreamReader == null) {
                            return -4;
                        }
                        try {
                            inputStreamReader.close();
                            return -4;
                        } catch (IOException e10) {
                            return -4;
                        }
                    } else {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e11) {
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e12) {
                            }
                        }
                        return 1;
                    }
                } catch (MalformedURLException e13) {
                    e2 = e13;
                    bufferedReader2 = bufferedReader;
                    try {
                        Log.e(f0a, "Malformed URL for activation script: " + str8, e2);
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e14) {
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e15) {
                            }
                        }
                        return 0;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                        throw th;
                    }
                } catch (IOException e16) {
                    e = e16;
                    try {
                        Log.e(f0a, "Error trying to get URL connection", e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e17) {
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e18) {
                            }
                        }
                        return 0;
                    } catch (Throwable th3) {
                        th = th3;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e19) {
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e20) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (MalformedURLException e21) {
                e2 = e21;
                Log.e(f0a, "Malformed URL for activation script: " + str8, e2);
                if (bufferedReader2 != null) {
                }
                if (inputStreamReader != null) {
                }
                return 0;
            } catch (IOException e22) {
                e = e22;
                bufferedReader = null;
                Log.e(f0a, "Error trying to get URL connection", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                return 0;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                throw th;
            }
        } catch (MalformedURLException e23) {
            e2 = e23;
            inputStreamReader = null;
            Log.e(f0a, "Malformed URL for activation script: " + str8, e2);
            if (bufferedReader2 != null) {
            }
            if (inputStreamReader != null) {
            }
            return 0;
        } catch (IOException e24) {
            e = e24;
            inputStreamReader = null;
            bufferedReader = null;
            Log.e(f0a, "Error trying to get URL connection", e);
            if (bufferedReader != null) {
            }
            if (inputStreamReader != null) {
            }
            return 0;
        } catch (Throwable th5) {
            th = th5;
            inputStreamReader = null;
            bufferedReader = null;
            if (bufferedReader != null) {
            }
            if (inputStreamReader != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0053 A[SYNTHETIC, Splitter:B:21:0x0053] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0058 A[SYNTHETIC, Splitter:B:24:0x0058] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0081 A[SYNTHETIC, Splitter:B:33:0x0081] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0086 A[SYNTHETIC, Splitter:B:36:0x0086] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00af A[SYNTHETIC, Splitter:B:45:0x00af] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00b4 A[SYNTHETIC, Splitter:B:48:0x00b4] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00df A[SYNTHETIC, Splitter:B:57:0x00df] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00e4 A[SYNTHETIC, Splitter:B:60:0x00e4] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00f3 A[SYNTHETIC, Splitter:B:68:0x00f3] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00f8 A[SYNTHETIC, Splitter:B:71:0x00f8] */
    /* renamed from: a */
    public static C0003a m3a() {
        C0003a aVar;
        FileInputStream fileInputStream;
        ObjectInputStream objectInputStream;
        Throwable th;
        ClassNotFoundException e;
        IOException e2;
        StreamCorruptedException e3;
        FileNotFoundException e4;
        File file = new File(f3d);
        if (!file.exists()) {
            Log.d(f0a, "Activiation file doesn't exist.");
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                objectInputStream = new ObjectInputStream(fileInputStream);
            } catch (FileNotFoundException e5) {
                e4 = e5;
                objectInputStream = null;
                try {
                    Log.e(f0a, "Error reading ActivationInfo object: " + e4.getMessage());
                    if (objectInputStream != null) {
                    }
                    if (fileInputStream != null) {
                    }
                    aVar = null;
                    return aVar;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInputStream != null) {
                    }
                    if (fileInputStream != null) {
                    }
                    throw th;
                }
            } catch (StreamCorruptedException e6) {
                e3 = e6;
                objectInputStream = null;
                Log.e(f0a, "Error reading ActivationInfo object: " + e3.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (IOException e7) {
                e2 = e7;
                objectInputStream = null;
                Log.e(f0a, "Error reading ActivationInfo object: " + e2.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (ClassNotFoundException e8) {
                e = e8;
                objectInputStream = null;
                Log.e(f0a, "Error reading ActivationInfo object: " + e.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                throw th;
            }
            try {
                aVar = (C0003a) objectInputStream.readObject();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e9) {
                    }
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e10) {
                    }
                }
            } catch (FileNotFoundException e11) {
                e4 = e11;
                Log.e(f0a, "Error reading ActivationInfo object: " + e4.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (StreamCorruptedException e12) {
                e3 = e12;
                Log.e(f0a, "Error reading ActivationInfo object: " + e3.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (IOException e13) {
                e2 = e13;
                Log.e(f0a, "Error reading ActivationInfo object: " + e2.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            } catch (ClassNotFoundException e14) {
                e = e14;
                Log.e(f0a, "Error reading ActivationInfo object: " + e.getMessage());
                if (objectInputStream != null) {
                }
                if (fileInputStream != null) {
                }
                aVar = null;
                return aVar;
            }
        } catch (FileNotFoundException e15) {
            e4 = e15;
            objectInputStream = null;
            fileInputStream = null;
            Log.e(f0a, "Error reading ActivationInfo object: " + e4.getMessage());
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e16) {
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    aVar = null;
                } catch (IOException e17) {
                    aVar = null;
                }
                return aVar;
            }
            aVar = null;
            return aVar;
        } catch (StreamCorruptedException e18) {
            e3 = e18;
            objectInputStream = null;
            fileInputStream = null;
            Log.e(f0a, "Error reading ActivationInfo object: " + e3.getMessage());
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e19) {
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    aVar = null;
                } catch (IOException e20) {
                    aVar = null;
                }
                return aVar;
            }
            aVar = null;
            return aVar;
        } catch (IOException e21) {
            e2 = e21;
            objectInputStream = null;
            fileInputStream = null;
            Log.e(f0a, "Error reading ActivationInfo object: " + e2.getMessage());
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e22) {
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    aVar = null;
                } catch (IOException e23) {
                    aVar = null;
                }
                return aVar;
            }
            aVar = null;
            return aVar;
        } catch (ClassNotFoundException e24) {
            e = e24;
            objectInputStream = null;
            fileInputStream = null;
            Log.e(f0a, "Error reading ActivationInfo object: " + e.getMessage());
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e25) {
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    aVar = null;
                } catch (IOException e26) {
                    aVar = null;
                }
                return aVar;
            }
            aVar = null;
            return aVar;
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
            fileInputStream = null;
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e27) {
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e28) {
                }
            }
            throw th;
        }
        return aVar;
    }

    /* renamed from: a */
    public static void m4a(String str) {
        Log.d(f0a, "init()");
        f1b = str;
        f3d = f1b + File.separatorChar + f2c;
        f4e.add(f1b + File.separatorChar + AbstractC0130a.f585q);
        f4e.add(f1b + File.separatorChar + "charts.bin");
        f4e.add(f1b + File.separatorChar + "charts.dbf");
        f4e.add(f1b + File.separatorChar + "charts.ini");
        f4e.add(f1b + File.separatorChar + AbstractC0130a.f586r);
        f4e.add(f1b + File.separatorChar + "vfrcharts.bin");
        f4e.add(f1b + File.separatorChar + "vfrchrts.dbf");
        f4e.add(f1b + File.separatorChar + AbstractC0130a.f584p);
        f4e.add(f1b + File.separatorChar + AbstractC0130a.f583o);
        f4e.add(f1b + File.separatorChar + "current_chart.tcl");
        f4e.add(f1b + File.separatorChar + "current_chart.pdf");
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x007f A[SYNTHETIC, Splitter:B:36:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0084 A[SYNTHETIC, Splitter:B:39:0x0084] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x008e A[SYNTHETIC, Splitter:B:45:0x008e] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0093 A[SYNTHETIC, Splitter:B:48:0x0093] */
    /* renamed from: a */
    public static boolean m5a(String str, String str2) {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        boolean z;
        ObjectOutputStream objectOutputStream = null;
        File file = new File(f3d);
        if (file.exists()) {
            Log.d(f0a, "Deleting existing activation file.");
            z = file.delete();
            if (!z) {
                Log.e(f0a, "Error deleting activation file");
                return z;
            }
        }
        FileOutputStream fileOutputStream2 = null;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            z = file.createNewFile();
            if (!z) {
                Log.e(f0a, "Error creating activation file");
                if (0 != 0) {
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e2) {
                    }
                }
                if (0 != 0) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
            } else {
                C0003a aVar = new C0003a(str, str2);
                FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                try {
                    ObjectOutputStream objectOutputStream3 = new ObjectOutputStream(fileOutputStream3);
                    try {
                        objectOutputStream3.writeObject(aVar);
                        if (objectOutputStream3 != null) {
                            try {
                                objectOutputStream3.close();
                            } catch (IOException e4) {
                            }
                        }
                        if (fileOutputStream3 != null) {
                            try {
                                fileOutputStream3.close();
                            } catch (IOException e5) {
                            }
                        }
                    } catch (IOException e6) {
                        e = e6;
                        objectOutputStream = objectOutputStream3;
                        fileOutputStream = fileOutputStream3;
                        try {
                            Log.e(f0a, "Error creating activation file: " + e.getMessage());
                            z = false;
                            if (objectOutputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (objectOutputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        objectOutputStream = objectOutputStream3;
                        fileOutputStream = fileOutputStream3;
                        if (objectOutputStream != null) {
                        }
                        if (fileOutputStream != null) {
                        }
                        throw th;
                    }
                } catch (IOException e7) {
                    e = e7;
                    fileOutputStream = fileOutputStream3;
                    Log.e(f0a, "Error creating activation file: " + e.getMessage());
                    z = false;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e8) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e9) {
                        }
                    }
                    return z;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = fileOutputStream3;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e10) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e11) {
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e12) {
            e = e12;
            fileOutputStream = null;
            Log.e(f0a, "Error creating activation file: " + e.getMessage());
            z = false;
            if (objectOutputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            return z;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            if (objectOutputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            throw th;
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0071 A[SYNTHETIC, Splitter:B:19:0x0071] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0076 A[SYNTHETIC, Splitter:B:22:0x0076] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0087 A[SYNTHETIC, Splitter:B:30:0x0087] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x008c A[SYNTHETIC, Splitter:B:33:0x008c] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0096 A[SYNTHETIC, Splitter:B:39:0x0096] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x009b A[SYNTHETIC, Splitter:B:42:0x009b] */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    public static int m6b(String str, String str2) {
        InputStreamReader inputStreamReader;
        Throwable th;
        BufferedReader bufferedReader;
        IOException e;
        MalformedURLException e2;
        BufferedReader bufferedReader2 = null;
        bufferedReader2 = null;
        bufferedReader2 = null;
        InputStreamReader inputStreamReader2 = null;
        String str3 = "http://www.jepptech.com/DeactKey.asp?SerialNumber=xxx" + str + "&DACode=" + str2 + "&UI=no";
        try {
            URLConnection openConnection = new URL(str3).openConnection();
            openConnection.setConnectTimeout(10000);
            openConnection.setReadTimeout(10000);
            inputStreamReader = new InputStreamReader(openConnection.getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    bufferedReader.readLine();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e4) {
                        }
                    }
                    return 1;
                } catch (MalformedURLException e5) {
                    e2 = e5;
                    bufferedReader2 = bufferedReader;
                    try {
                        Log.e(f0a, "Malformed URL for deactivation script: " + str3, e2);
                        if (bufferedReader2 != null) {
                        }
                        if (inputStreamReader == null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader2 != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                    inputStreamReader2 = inputStreamReader;
                    try {
                        Log.e(f0a, "Error trying to get URL connection", e);
                        if (bufferedReader != null) {
                        }
                        if (inputStreamReader2 == null) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = inputStreamReader2;
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                    throw th;
                }
            } catch (MalformedURLException e7) {
                e2 = e7;
                Log.e(f0a, "Malformed URL for deactivation script: " + str3, e2);
                if (bufferedReader2 != null) {
                }
                if (inputStreamReader == null) {
                }
            } catch (IOException e8) {
                e = e8;
                bufferedReader = null;
                inputStreamReader2 = inputStreamReader;
                Log.e(f0a, "Error trying to get URL connection", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader2 == null) {
                }
            }
        } catch (MalformedURLException e9) {
            e2 = e9;
            inputStreamReader = null;
            Log.e(f0a, "Malformed URL for deactivation script: " + str3, e2);
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e10) {
                }
            }
            if (inputStreamReader == null) {
                return 0;
            }
            try {
                inputStreamReader.close();
                return 0;
            } catch (IOException e11) {
                return 0;
            }
        } catch (IOException e12) {
            e = e12;
            bufferedReader = null;
            Log.e(f0a, "Error trying to get URL connection", e);
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e13) {
                }
            }
            if (inputStreamReader2 == null) {
                return 0;
            }
            try {
                inputStreamReader2.close();
                return 0;
            } catch (IOException e14) {
                return 0;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStreamReader = null;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e15) {
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e16) {
                }
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static boolean m7b() {
        return m3a() != null;
    }

    /* renamed from: b */
    public static boolean m8b(String str) {
        return false;
    }

    /* renamed from: c */
    public static String m9c(String str) {
        if (str.length() < 13 || str.length() > 19) {
            Log.d(f0a, "Invalid serial number: " + str);
            return null;
        }
        String replaceAll = str.trim().replaceAll("-", "").replaceAll(" ", "");
        if (replaceAll.length() == 13 || replaceAll.length() == 16) {
            return replaceAll.length() == 16 ? replaceAll.substring(3, replaceAll.length()) : replaceAll;
        }
        Log.d(f0a, "Invalid serial number: " + str);
        return null;
    }

    /* renamed from: c */
    public static boolean m10c() {
        return false;
    }

    /* renamed from: d */
    public static boolean m11d() {
        File file = new File(f3d);
        if (file.exists()) {
            Log.d(f0a, "Deleting existing activation file.");
            boolean delete = file.delete();
            if (!delete) {
                Log.e(f0a, "Error deleting activation file");
                return delete;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m12e() {
        boolean z = false;
        for (String str : f4e) {
            File file = new File(str);
            z = file.exists() ? file.delete() : z;
        }
        Log.d(f0a, "Deleting demo charts was successfull: " + z);
        return z;
    }

    /* renamed from: f */
    public static boolean m13f() {
        return C0118p.m472b(new File(f1b));
    }

    /* renamed from: g */
    public static void m14g() {
        C0003a a = m3a();
        if (a != null) {
            m6b(a.mo3a(), ActivationNativeWrapper.createDeactivationCode(ActivationNativeWrapper.generateSiteCodeFromActivationCode(a.mo5b())));
            m13f();
        }
    }
}
