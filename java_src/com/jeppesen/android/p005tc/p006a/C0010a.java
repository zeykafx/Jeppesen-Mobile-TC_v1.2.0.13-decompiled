package com.jeppesen.android.p005tc.p006a;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.jeppesen.android.p002a.C0002a;
import com.jeppesen.android.p003b.C0003a;
import com.jeppesen.android.p004c.C0005a;
import com.jeppesen.android.util.C0107e;
import com.jeppesen.android.util.C0112j;
import com.jeppesen.android.util.C0115m;
import com.jeppesen.android.util.C0117o;
import com.jeppesen.jeppview.jtca.ActivationNativeWrapper;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.jeppesen.android.tc.a.a */
public class C0010a {

    /* renamed from: A */
    private static final String f65A = "/MobileCoveragesService/checkUserAuthentication";

    /* renamed from: B */
    private static final String f66B = "serialnumber";

    /* renamed from: C */
    private static final String f67C = "sitekey";

    /* renamed from: a */
    public static final String f68a = "username";

    /* renamed from: b */
    public static final String f69b = "password";

    /* renamed from: c */
    public static final String f70c = "fileId";

    /* renamed from: d */
    public static final String f71d = "fileName";

    /* renamed from: e */
    public static final String f72e = "title";

    /* renamed from: f */
    public static final String f73f = "fileIdHash";

    /* renamed from: g */
    public static final String f74g = "revision";

    /* renamed from: h */
    public static final String f75h = "fileSize";

    /* renamed from: i */
    public static final String f76i = "downloadedFileName";

    /* renamed from: j */
    public static final String f77j = "downloadUrl";

    /* renamed from: k */
    public static final String f78k = "downloadId";

    /* renamed from: l */
    public static final String f79l = "description";

    /* renamed from: m */
    public static final String f80m = "coverageId";

    /* renamed from: n */
    public static final String f81n = "timeout";

    /* renamed from: o */
    public static final String f82o = "https";

    /* renamed from: p */
    public static final String f83p = "manualType";

    /* renamed from: q */
    public static final String f84q = "subscribed";

    /* renamed from: r */
    public static final String f85r = "isDownloaded";

    /* renamed from: s */
    public static final String f86s = "Standard_Airway_Manual";

    /* renamed from: t */
    private static final String f87t = C0010a.class.getSimpleName();

    /* renamed from: u */
    private static final String f88u = "https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs";

    /* renamed from: v */
    private static final String f89v = "/MobileEtextService/getEtextByUsername";

    /* renamed from: w */
    private static final String f90w = "/XmlToJSONWrapperService/getAuthorizedStandardAirwayManuals";

    /* renamed from: x */
    private static final String f91x = "/MobileEtextService/getDownloadUrl";

    /* renamed from: y */
    private static final String f92y = "/MobileCoveragesService/getTailoredCoveragesList";

    /* renamed from: z */
    private static final String f93z = "/MobileCoveragesService/getDownloadUrl";

    /* renamed from: a */
    public static String m91a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            try {
                instance.update(str.getBytes("UTF-8"));
                return Base64.encodeToString(instance.digest(), 2);
            } catch (UnsupportedEncodingException e) {
                Log.e(f87t, "Unable to encrypt password: " + e);
                return null;
            }
        } catch (NoSuchAlgorithmException e2) {
            Log.e(f87t, "Unable to encrypt password: " + e2);
            return null;
        }
    }

    /* renamed from: a */
    public static HashMap m92a(Context context) {
        String a = C0115m.m444a(f68a, context);
        String a2 = C0115m.m444a(f69b, context).length() > 0 ? m91a(C0115m.m444a(f69b, context)) : "";
        HashMap hashMap = new HashMap();
        hashMap.put(f68a, a);
        hashMap.put(f69b, a2);
        return hashMap;
    }

    /* renamed from: a */
    public static List m93a(Map map, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (C0002a.m7b()) {
            if (z) {
                try {
                    JSONArray a = m94a("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/MobileEtextService/getEtextByUsername", map);
                    for (int i = 0; i < a.length(); i++) {
                        arrayList.add(new C0011b(a.getJSONObject(i)));
                    }
                } catch (Exception e) {
                    Log.i(f87t, "fetchCompanyManuals exception: " + e);
                    throw new Exception("There was a problem with your Company Content login credentials: " + e.getMessage());
                }
            }
            HashMap hashMap = new HashMap();
            C0003a a2 = C0002a.m3a();
            String str = null;
            try {
                str = ActivationNativeWrapper.formatSerialNumber(a2.mo3a());
            } catch (OutOfMemoryError e2) {
                Log.e("JNI Error", "OutOfMemoryError in JNI code formatting serial number.");
            }
            hashMap.put(f67C, a2.mo5b());
            hashMap.put(f66B, str);
            JSONArray a3 = m94a("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/XmlToJSONWrapperService/getAuthorizedStandardAirwayManuals", hashMap);
            for (int i2 = 0; i2 < a3.length(); i2++) {
                arrayList.add(new C0011b(a3.getJSONObject(i2)));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static JSONArray m94a(String str, Map map) {
        try {
            return new JSONArray(m103c(str, map));
        } catch (JSONException e) {
            throw new Exception("Unexpected server response.  Are you online?");
        }
    }

    /* renamed from: a */
    public static boolean m95a() {
        int c = C0005a.m34c();
        return c < 0 || ((int) C0107e.m384b()) - c >= 1;
    }

    /* renamed from: a */
    public static boolean m96a(Context context, boolean z) {
        new ArrayList();
        try {
            List a = m93a(m92a(context), z);
            m107d(a);
            return m102b(a);
        } catch (Exception e) {
            Log.w(f87t, e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m97a(List list) {
        if (list.size() < 1) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0012c cVar = (C0012c) it.next();
            if (cVar.mo93k() && !cVar.mo77a()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m98a(Map map) {
        String c = m103c("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/MobileCoveragesService/checkUserAuthentication", map);
        if (c == null || c.length() == 0) {
            return false;
        }
        return Boolean.valueOf(c).booleanValue();
    }

    /* renamed from: b */
    public static List m100b(Map map) {
        JSONArray a = m94a("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/MobileCoveragesService/getTailoredCoveragesList", map);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < a.length(); i++) {
            arrayList.add(new C0012c(a.getJSONObject(i)));
        }
        return arrayList;
    }

    /* renamed from: b */
    private static JSONObject m101b(String str, Map map) {
        try {
            return new JSONObject(m103c(str, map));
        } catch (JSONException e) {
            throw new Exception("Unexpected server response.  Are you online?");
        }
    }

    /* renamed from: b */
    public static boolean m102b(List list) {
        if (list.size() < 1) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0011b bVar = (C0011b) it.next();
            if (bVar.mo66j() && !bVar.mo52a()) {
                return true;
            }
            if (!bVar.mo66j() && bVar.mo52a()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static String m103c(String str, Map map) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        if (map != null && map.size() > 0) {
            ArrayList arrayList = new ArrayList(map.size());
            for (String str2 : map.keySet()) {
                arrayList.add(new BasicNameValuePair(str2, (String) map.get(str2)));
            }
            str = str + '?' + URLEncodedUtils.format(arrayList, (String) null);
        }
        HttpResponse execute = defaultHttpClient.execute(new HttpGet(str));
        int statusCode = execute.getStatusLine().getStatusCode();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        execute.getEntity().writeTo(byteArrayOutputStream);
        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
        if (statusCode == 200) {
            return byteArrayOutputStream2;
        }
        if (byteArrayOutputStream2.startsWith("Oh no!")) {
            byteArrayOutputStream2 = byteArrayOutputStream2.substring(6);
        }
        throw new Exception(byteArrayOutputStream2);
    }

    /* renamed from: c */
    public static String m104c(Map map) {
        return m103c("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/MobileEtextService/getDownloadUrl", map);
    }

    /* renamed from: c */
    public static void m105c(List list) {
        HashMap hashMap = new HashMap();
        for (C0012c cVar : C0117o.m462a()) {
            hashMap.put(cVar.mo91i(), cVar);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0012c cVar2 = (C0012c) it.next();
            if (hashMap.containsKey(cVar2.mo91i())) {
                cVar2.mo76a(true);
            } else {
                cVar2.mo76a(false);
            }
        }
    }

    /* renamed from: d */
    public static String m106d(Map map) {
        return m103c("https://www.jeppesen.com/eLinkClientServices_2_0/serv/rs/MobileCoveragesService/getDownloadUrl", map);
    }

    /* renamed from: d */
    public static void m107d(List list) {
        HashMap hashMap = new HashMap();
        for (C0011b bVar : C0112j.m430a()) {
            hashMap.put(bVar.mo53b(), bVar);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0011b bVar2 = (C0011b) it.next();
            if (hashMap.containsKey(bVar2.mo53b())) {
                bVar2.mo51a(true);
                C0011b bVar3 = (C0011b) hashMap.get(bVar2.mo53b());
                if (bVar3.mo62f().equals(bVar2.mo62f()) && bVar3.mo52a()) {
                    bVar2.mo60d(bVar3.mo65i());
                    bVar2.mo54b(bVar3.mo67k());
                }
            } else {
                bVar2.mo51a(false);
            }
        }
    }
}
