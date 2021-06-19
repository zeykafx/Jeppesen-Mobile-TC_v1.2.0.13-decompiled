package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.CRC32;

/* access modifiers changed from: package-private */
/* renamed from: com.jeppesen.android.tc.activity.bp */
public class AsyncTaskC0059bp extends AsyncTask {

    /* renamed from: a */
    String f350a;

    /* renamed from: b */
    final /* synthetic */ UpdateActivity f351b;

    public AsyncTaskC0059bp(UpdateActivity updateActivity, String str) {
        this.f351b = updateActivity;
        this.f350a = str;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x004f A[SYNTHETIC, Splitter:B:14:0x004f] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0054 A[SYNTHETIC, Splitter:B:17:0x0054] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x010f A[SYNTHETIC, Splitter:B:48:0x010f] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0114 A[SYNTHETIC, Splitter:B:51:0x0114] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0121 A[SYNTHETIC, Splitter:B:57:0x0121] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0126 A[SYNTHETIC, Splitter:B:60:0x0126] */
    /* JADX WARNING: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    public Boolean doInBackground(Void... voidArr) {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        IOException e;
        BufferedReader bufferedReader2 = null;
        this.f351b.f243F = PreferenceManager.getDefaultSharedPreferences(this.f351b.getApplicationContext());
        try {
            inputStreamReader = new InputStreamReader(new URL(AbstractC0130a.f575g).openConnection().getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        this.f351b.f241D.append(readLine);
                    } catch (MalformedURLException e2) {
                        e = e2;
                        bufferedReader2 = bufferedReader;
                        try {
                            Log.e(UpdateActivity.f232c, "Malformed URL for data EULA", e);
                            Boolean valueOf = Boolean.valueOf(mo295a());
                            if (bufferedReader2 != null) {
                            }
                            if (inputStreamReader == null) {
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        try {
                            Log.e(UpdateActivity.f232c, "Error trying to get URL connection", e);
                            Boolean valueOf2 = Boolean.valueOf(mo295a());
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader == null) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                            throw th;
                        }
                    }
                }
                if (this.f351b.f241D == null || this.f351b.f241D.length() == 0) {
                    Log.e(UpdateActivity.f232c, "No data EULA found");
                    Boolean valueOf3 = Boolean.valueOf(mo295a());
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e4) {
                        }
                    }
                    if (inputStreamReader == null) {
                        return valueOf3;
                    }
                    try {
                        inputStreamReader.close();
                        return valueOf3;
                    } catch (IOException e5) {
                        return valueOf3;
                    }
                } else {
                    Log.d(UpdateActivity.f232c, "retrieved data EULA");
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e6) {
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e7) {
                        }
                    }
                    try {
                        byte[] bytes = this.f351b.f241D.toString().getBytes("UTF-8");
                        CRC32 crc32 = new CRC32();
                        crc32.update(bytes);
                        this.f351b.f242E = crc32.getValue();
                        this.f351b.f244G = this.f351b.f247J + this.f351b.f242E;
                        return this.f351b.f243F.getBoolean(this.f351b.f244G, false);
                    } catch (UnsupportedEncodingException e8) {
                        Log.e(UpdateActivity.f232c, "Unable to get bytes from EULA text", e8);
                        return Boolean.valueOf(mo295a());
                    }
                }
            } catch (MalformedURLException e9) {
                e = e9;
                Log.e(UpdateActivity.f232c, "Malformed URL for data EULA", e);
                Boolean valueOf4 = Boolean.valueOf(mo295a());
                if (bufferedReader2 != null) {
                }
                if (inputStreamReader == null) {
                }
            } catch (IOException e10) {
                e = e10;
                bufferedReader = null;
                Log.e(UpdateActivity.f232c, "Error trying to get URL connection", e);
                Boolean valueOf22 = Boolean.valueOf(mo295a());
                if (bufferedReader != null) {
                }
                if (inputStreamReader == null) {
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                throw th;
            }
        } catch (MalformedURLException e11) {
            e = e11;
            inputStreamReader = null;
            Log.e(UpdateActivity.f232c, "Malformed URL for data EULA", e);
            Boolean valueOf42 = Boolean.valueOf(mo295a());
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e12) {
                }
            }
            if (inputStreamReader == null) {
                return valueOf42;
            }
            try {
                inputStreamReader.close();
                return valueOf42;
            } catch (IOException e13) {
                return valueOf42;
            }
        } catch (IOException e14) {
            e = e14;
            inputStreamReader = null;
            bufferedReader = null;
            Log.e(UpdateActivity.f232c, "Error trying to get URL connection", e);
            Boolean valueOf222 = Boolean.valueOf(mo295a());
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e15) {
                }
            }
            if (inputStreamReader == null) {
                return valueOf222;
            }
            try {
                inputStreamReader.close();
                return valueOf222;
            } catch (IOException e16) {
                return valueOf222;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStreamReader = null;
            bufferedReader = null;
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
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            this.f351b.f241D.delete(0, this.f351b.f241D.length());
            this.f351b.f242E = 0;
            this.f351b.m274d((UpdateActivity) this.f350a);
        } else if (this.f351b.f242E == 0) {
            this.f351b.showDialog(3);
        } else {
            this.f351b.showDialog(2);
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public boolean mo295a() {
        if (!this.f351b.f243F.getBoolean(this.f351b.f245H, false)) {
            return false;
        }
        this.f351b.f270v = this.f351b.f243F.getBoolean(this.f351b.f246I, true);
        return this.f351b.f270v;
    }
}
