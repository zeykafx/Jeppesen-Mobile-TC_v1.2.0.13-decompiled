package com.jeppesen.android.util;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0012c;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.jeppesen.android.util.o */
public class C0117o {

    /* renamed from: a */
    private static final String f474a = C0117o.class.getSimpleName();

    /* JADX WARNING: Removed duplicated region for block: B:10:0x003a  */
    /* renamed from: a */
    public static List m462a() {
        JSONArray jSONArray;
        String a = C0115m.m444a(AbstractC0130a.f589u, MobileTC.m377q());
        Log.d(f474a, "metaInfoJSONArray is " + a);
        JSONArray jSONArray2 = null;
        if (a != null) {
            try {
                if (!a.equals("")) {
                    jSONArray = new JSONArray(a);
                    jSONArray2 = jSONArray;
                    ArrayList arrayList = new ArrayList();
                    if (jSONArray2 != null) {
                        for (int i = 0; i < jSONArray2.length(); i++) {
                            try {
                                arrayList.add(new C0012c(jSONArray2.getJSONObject(i)));
                            } catch (JSONException e) {
                                Log.e(f474a, "Oh No!", e);
                            }
                        }
                    }
                    return arrayList;
                }
            } catch (JSONException e2) {
                Log.e(f474a, "Oh No!", e2);
            }
        }
        jSONArray = null;
        jSONArray2 = jSONArray;
        ArrayList arrayList2 = new ArrayList();
        if (jSONArray2 != null) {
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static void m463a(C0012c cVar, boolean z) {
        List a = m462a();
        C0012c o = cVar.clone();
        o.mo80b("");
        o.mo75a("");
        boolean z2 = false;
        for (int i = 0; i < a.size() && !z2; i++) {
            try {
                if (((C0012c) a.get(i)).mo78b().equals(o.mo78b()) && ((C0012c) a.get(i)).mo88f().equals(o.mo88f())) {
                    if (z) {
                        Log.d(f474a, "Replacing EtextDocumentInfo record at " + i);
                        a.set(i, o);
                    }
                    z2 = true;
                }
            } catch (NullPointerException e) {
            }
        }
        if (!z2) {
            Log.d(f474a, "Adding TailoredCoverageInfo record");
            a.add(o);
        }
        m464a(a);
    }

    /* renamed from: a */
    public static void m464a(List list) {
        if (list != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((C0012c) it.next()).mo96n());
            }
            C0115m.m449a(AbstractC0130a.f589u, jSONArray.toString(), MobileTC.m377q());
        }
    }
}
