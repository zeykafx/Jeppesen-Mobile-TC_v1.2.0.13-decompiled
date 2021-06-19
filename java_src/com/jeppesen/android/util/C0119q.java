package com.jeppesen.android.util;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* renamed from: com.jeppesen.android.util.q */
public class C0119q implements FileFilter {

    /* renamed from: a */
    private String f476a;

    public C0119q(String str) {
        this.f476a = str.replaceAll("\\*", ".*").replaceAll("\\?", ".");
    }

    public boolean accept(File file) {
        return Pattern.compile(this.f476a, 2).matcher(file.getName()).matches();
    }
}
