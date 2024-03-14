package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.protobuf.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0784w {

    /* renamed from: b  reason: collision with root package name */
    public static volatile C0784w f8720b;

    /* renamed from: c  reason: collision with root package name */
    public static final C0784w f8721c = new C0784w(0);

    /* renamed from: a  reason: collision with root package name */
    public final Map f8722a;

    public C0784w() {
        this.f8722a = new HashMap();
    }

    public static C0784w a() {
        C0784w c0784w = f8720b;
        if (c0784w == null) {
            synchronized (C0784w.class) {
                c0784w = f8720b;
                if (c0784w == null) {
                    Class cls = C0780u.f8717a;
                    C0784w c0784w2 = null;
                    if (cls != null) {
                        try {
                            c0784w2 = (C0784w) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (c0784w2 == null) {
                        c0784w2 = f8721c;
                    }
                    f8720b = c0784w2;
                    c0784w = c0784w2;
                }
            }
        }
        return c0784w;
    }

    public C0784w(int i4) {
        this.f8722a = Collections.emptyMap();
    }
}
