package com.google.protobuf;

import com.android.launcher3.util.C0479l;
/* loaded from: classes.dex */
class Utf8$UnpairedSurrogateException extends IllegalArgumentException {
    public Utf8$UnpairedSurrogateException(int i4, int i5) {
        super(C0479l.a("Unpaired surrogate at index ", i4, " of ", i5));
    }
}
