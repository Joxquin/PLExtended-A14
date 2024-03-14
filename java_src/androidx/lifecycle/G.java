package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class G {

    /* renamed from: f  reason: collision with root package name */
    public static final Class[] f3551f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a  reason: collision with root package name */
    public final Map f3552a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f3553b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f3554c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f3555d;

    /* renamed from: e  reason: collision with root package name */
    public final E f3556e;

    public G(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f3552a = linkedHashMap;
        this.f3553b = new LinkedHashMap();
        this.f3554c = new LinkedHashMap();
        this.f3555d = new LinkedHashMap();
        this.f3556e = new E(this, 0);
        linkedHashMap.putAll(map);
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle a(androidx.lifecycle.G r11) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.G.a(androidx.lifecycle.G):android.os.Bundle");
    }

    public G() {
        this.f3552a = new LinkedHashMap();
        this.f3553b = new LinkedHashMap();
        this.f3554c = new LinkedHashMap();
        this.f3555d = new LinkedHashMap();
        this.f3556e = new E(this, 1);
    }
}
