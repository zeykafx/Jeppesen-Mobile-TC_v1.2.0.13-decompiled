package com.jeppesen.android.util;

import android.util.Log;
import com.jeppesen.android.p005tc.MobileTC;
import com.jeppesen.android.p005tc.p006a.C0011b;
import com.jeppesen.jeppview.jtca.AbstractC0130a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.jeppesen.android.util.j */
public class C0112j {

    /* renamed from: a */
    private static final String f470a = C0112j.class.getSimpleName();

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0022  */
    /* renamed from: a */
    public static List m430a() {
        JSONArray jSONArray;
        String a = C0115m.m444a(AbstractC0130a.f587s, MobileTC.m377q());
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
                                arrayList.add(new C0011b(jSONArray2.getJSONObject(i)));
                            } catch (JSONException e) {
                                Log.e(f470a, "Oh No!", e);
                            }
                        }
                    }
                    return arrayList;
                }
            } catch (JSONException e2) {
                Log.e(f470a, "Oh No!", e2);
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
    public static void m431a(C0011b bVar) {
        List a = m430a();
        int i = 0;
        while (true) {
            if (i >= a.size()) {
                break;
            }
            try {
                if (((C0011b) a.get(i)).mo53b().equals(bVar.mo53b())) {
                    a.remove(i);
                    break;
                }
                i++;
            } catch (NullPointerException e) {
            }
        }
        m433a(a);
    }

    /* renamed from: a */
    public static void m432a(C0011b bVar, boolean z) {
        List a = m430a();
        C0011b p = bVar.clone();
        p.mo55b("");
        p.mo50a("");
        boolean z2 = false;
        for (int i = 0; i < a.size() && !z2; i++) {
            try {
                if (((C0011b) a.get(i)).mo53b().equals(p.mo53b()) && ((C0011b) a.get(i)).mo62f().equals(p.mo62f())) {
                    if (z) {
                        a.set(i, p);
                    }
                    z2 = true;
                }
            } catch (NullPointerException e) {
            }
        }
        if (!z2) {
            a.add(p);
        }
        m433a(a);
    }

    /* renamed from: a */
    public static void m433a(List list) {
        if (list != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((C0011b) it.next()).mo71o());
            }
            C0115m.m449a(AbstractC0130a.f587s, jSONArray.toString(), MobileTC.m377q());
        }
    }
}
