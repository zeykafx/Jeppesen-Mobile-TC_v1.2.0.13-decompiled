package com.jeppesen.android.p005tc.activity;

import android.app.ProgressDialog;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import android.webkit.WebView;
import com.jeppesen.android.p005tc.R;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

/* renamed from: com.jeppesen.android.tc.activity.an */
class AsyncTaskC0030an extends AsyncTask {

    /* renamed from: a */
    final /* synthetic */ LegalActivity f310a;

    /* renamed from: b */
    private ProgressDialog f311b;

    private AsyncTaskC0030an(LegalActivity legalActivity) {
        this.f310a = legalActivity;
        this.f311b = null;
    }

    /* synthetic */ AsyncTaskC0030an(LegalActivity legalActivity, DialogInterface$OnDismissListenerC0029am amVar) {
        this(legalActivity);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x009f A[SYNTHETIC, Splitter:B:18:0x009f] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a4 A[SYNTHETIC, Splitter:B:21:0x00a4] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0144 A[SYNTHETIC, Splitter:B:48:0x0144] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0149 A[SYNTHETIC, Splitter:B:51:0x0149] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0156 A[SYNTHETIC, Splitter:B:57:0x0156] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x015b A[SYNTHETIC, Splitter:B:60:0x015b] */
    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        IOException e;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f310a.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = false;
        if (activeNetworkInfo != null) {
            z = activeNetworkInfo.isConnected();
        }
        if (!z) {
            LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.data_eula_cannot_connect_message));
            LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.data_eula_cannot_connect));
            Log.d(LegalActivity.m245a(), "Unable to connect to network to get Data EULA");
        } else {
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
                            LegalActivity.m246a(this.f310a).append(readLine);
                        } catch (MalformedURLException e2) {
                            e = e2;
                            try {
                                Log.e(LegalActivity.m245a(), "Malformed URL for data EULA text in Legal", e);
                                LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                                LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
                                if (bufferedReader != null) {
                                }
                                if (inputStreamReader != null) {
                                }
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
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
                                throw th;
                            }
                        } catch (IOException e5) {
                            e = e5;
                            Log.e(LegalActivity.m245a(), "Error trying to get URL connection for data EULA text in Legal", e);
                            LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                            LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
                            if (bufferedReader != null) {
                            }
                            if (inputStreamReader != null) {
                            }
                            return null;
                        }
                    }
                    if (LegalActivity.m246a(this.f310a) == null || LegalActivity.m246a(this.f310a).length() == 0) {
                        Log.e(LegalActivity.m245a(), "No data EULA found");
                        LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                        LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
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
                    } else {
                        Log.d(LegalActivity.m245a(), "retrieved data EULA");
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e8) {
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                            } catch (IOException e9) {
                            }
                        }
                    }
                } catch (MalformedURLException e10) {
                    e = e10;
                    bufferedReader = null;
                    Log.e(LegalActivity.m245a(), "Malformed URL for data EULA text in Legal", e);
                    LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                    LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
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
                    return null;
                } catch (IOException e13) {
                    e = e13;
                    bufferedReader = null;
                    Log.e(LegalActivity.m245a(), "Error trying to get URL connection for data EULA text in Legal", e);
                    LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                    LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
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
            } catch (MalformedURLException e16) {
                e = e16;
                inputStreamReader = null;
                bufferedReader = null;
                Log.e(LegalActivity.m245a(), "Malformed URL for data EULA text in Legal", e);
                LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                return null;
            } catch (IOException e17) {
                e = e17;
                inputStreamReader = null;
                bufferedReader = null;
                Log.e(LegalActivity.m245a(), "Error trying to get URL connection for data EULA text in Legal", e);
                LegalActivity.m247b(this.f310a).append(this.f310a.getString(R.string.eula_error_msg));
                LegalActivity.m248c(this.f310a).append(this.f310a.getString(R.string.eula_error_title));
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (inputStreamReader != null) {
                }
                throw th;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(Void r7) {
        this.f311b.dismiss();
        if (LegalActivity.m246a(this.f310a).length() > 0) {
            ((WebView) this.f310a.findViewById(R.id.EulaDialogWebView)).loadDataWithBaseURL(null, LegalActivity.m246a(this.f310a).toString(), "text/html", "UTF-8", null);
        } else {
            this.f310a.showDialog(1);
        }
    }

    /* access modifiers changed from: protected */
    public void onPreExecute() {
        this.f311b = new ProgressDialog(this.f310a);
        this.f311b.setMessage("Loading data");
        this.f311b.setIndeterminate(true);
        this.f311b.setCancelable(false);
        this.f311b.show();
    }
}
