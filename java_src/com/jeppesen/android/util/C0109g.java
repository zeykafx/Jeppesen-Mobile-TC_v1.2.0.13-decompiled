package com.jeppesen.android.util;

import android.app.DownloadManager;
import android.content.Context;
import android.database.Cursor;
import com.jeppesen.android.p005tc.p006a.C0010a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.jeppesen.android.util.g */
public class C0109g {

    /* renamed from: b */
    private static final String f457b = C0109g.class.getSimpleName();

    /* renamed from: a */
    DownloadManager f458a = null;

    public C0109g(Context context) {
        this.f458a = (DownloadManager) context.getSystemService("download");
    }

    /* renamed from: a */
    public C0110h mo384a(long j) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        return (C0110h) mo385a(arrayList).get(0);
    }

    /* renamed from: a */
    public List mo385a(List list) {
        long[] jArr = new long[list.size()];
        HashMap hashMap = new HashMap(list.size());
        for (int i = 0; i < list.size(); i++) {
            hashMap.put(list.get(i), new C0110h(((Long) list.get(i)).longValue()));
            jArr[i] = ((Long) list.get(i)).longValue();
        }
        Cursor query = this.f458a.query(new DownloadManager.Query().setFilterById(jArr));
        if (query.moveToFirst()) {
            do {
                C0110h hVar = (C0110h) hashMap.get(Long.valueOf(query.getLong(query.getColumnIndex("_id"))));
                hVar.mo390a(Integer.valueOf(query.getInt(query.getColumnIndex("status"))));
                hVar.mo393b(query.getLong(query.getColumnIndex("bytes_so_far")));
                hVar.mo396c(query.getLong(query.getColumnIndex("total_size")));
                hVar.mo394b(Integer.valueOf(query.getInt(query.getColumnIndex("reason"))));
                hVar.mo391a(query.getString(query.getColumnIndex(C0010a.f72e)));
            } while (query.moveToNext());
        }
        query.close();
        return new ArrayList(hashMap.values());
    }

    /* renamed from: a */
    public List mo386a(Set set) {
        ArrayList arrayList = new ArrayList(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf((String) it.next()));
        }
        return mo385a(arrayList);
    }

    /* renamed from: b */
    public boolean mo387b(Set set) {
        boolean z = false;
        Iterator it = mo386a(set).iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            C0110h hVar = (C0110h) it.next();
            if (hVar.mo392b() == null || hVar.mo392b().equals(8)) {
                set.remove(String.valueOf(hVar.mo388a()));
            } else if (hVar.mo392b().equals(16)) {
                z2 = true;
                set.remove(String.valueOf(hVar.mo388a()));
            }
            z = z2;
        }
    }
}
