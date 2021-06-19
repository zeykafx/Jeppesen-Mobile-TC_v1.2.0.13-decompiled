package com.jeppesen.android.p005tc.activity;

import android.widget.Filter;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jeppesen.android.tc.activity.h */
class C0066h extends Filter {

    /* renamed from: a */
    final /* synthetic */ C0065g f364a;

    C0066h(C0065g gVar) {
        this.f364a = gVar;
    }

    /* access modifiers changed from: protected */
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (charSequence == null || charSequence.length() == 0) {
            synchronized (this.f364a.f361e) {
                ArrayList arrayList = new ArrayList(this.f364a.f362f);
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
            }
        } else {
            String lowerCase = charSequence.toString().toLowerCase();
            List list = this.f364a.f362f;
            int size = list.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj.toString().contains(lowerCase)) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() < 1) {
                arrayList2.add(C0065g.f357b);
            }
            filterResults.values = arrayList2;
            filterResults.count = arrayList2.size();
        }
        return filterResults;
    }

    /* access modifiers changed from: protected */
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        this.f364a.f363g = (List) filterResults.values;
        if (filterResults.count > 0) {
            this.f364a.notifyDataSetChanged();
        } else {
            this.f364a.notifyDataSetInvalidated();
        }
    }
}
