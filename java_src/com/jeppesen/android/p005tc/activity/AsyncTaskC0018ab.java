package com.jeppesen.android.p005tc.activity;

import android.os.AsyncTask;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;

/* renamed from: com.jeppesen.android.tc.activity.ab */
class AsyncTaskC0018ab extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ ChartDisplayActivity f295a;

    private AsyncTaskC0018ab(ChartDisplayActivity chartDisplayActivity) {
        this.f295a = chartDisplayActivity;
    }

    /* synthetic */ AsyncTaskC0018ab(ChartDisplayActivity chartDisplayActivity, C0073o oVar) {
        this(chartDisplayActivity);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0036 A[SYNTHETIC, Splitter:B:13:0x0036] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003b A[SYNTHETIC, Splitter:B:16:0x003b] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0063 A[SYNTHETIC, Splitter:B:31:0x0063] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0068 A[SYNTHETIC, Splitter:B:34:0x0068] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0073 A[SYNTHETIC, Splitter:B:40:0x0073] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0078 A[SYNTHETIC, Splitter:B:43:0x0078] */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        IOException e;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            inputStreamReader = new InputStreamReader(this.f295a.getApplicationContext().getAssets().open("help-v2.html"));
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuffer.append(readLine);
                    } catch (MalformedURLException e2) {
                        e = e2;
                        try {
                            Log.e(ChartDisplayActivity.m214l(), "Malformed URL for help file", e);
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        Log.e(ChartDisplayActivity.m214l(), "Error trying to get URL connection for help file", e);
                        if (bufferedReader != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                        return null;
                    }
                }
                ChartDisplayActivity.m188a(this.f295a, stringBuffer.toString());
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                    }
                }
                if (inputStreamReader != null) {
                    try {
                        inputStreamReader.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (MalformedURLException e6) {
                e = e6;
                bufferedReader = null;
                Log.e(ChartDisplayActivity.m214l(), "Malformed URL for help file", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                return null;
            } catch (IOException e7) {
                e = e7;
                bufferedReader = null;
                Log.e(ChartDisplayActivity.m214l(), "Error trying to get URL connection for help file", e);
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                return null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                throw th;
            }
        } catch (MalformedURLException e8) {
            e = e8;
            inputStreamReader = null;
            bufferedReader = null;
            Log.e(ChartDisplayActivity.m214l(), "Malformed URL for help file", e);
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e9) {
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e10) {
                }
            }
            return null;
        } catch (IOException e11) {
            e = e11;
            inputStreamReader = null;
            bufferedReader = null;
            Log.e(ChartDisplayActivity.m214l(), "Error trying to get URL connection for help file", e);
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e12) {
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e13) {
                }
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
            bufferedReader = null;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e14) {
                }
            }
            if (inputStreamReader != null) {
                try {
                    inputStreamReader.close();
                } catch (IOException e15) {
                }
            }
            throw th;
        }
        return null;
    }
}
