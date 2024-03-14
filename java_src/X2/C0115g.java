package X2;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: X2.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0115g {

    /* renamed from: k  reason: collision with root package name */
    public static final C0115g f2190k = new C0115g();

    /* renamed from: a  reason: collision with root package name */
    public E f2191a;

    /* renamed from: b  reason: collision with root package name */
    public Executor f2192b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2193c;

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0111e f2194d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2195e;

    /* renamed from: f  reason: collision with root package name */
    public Object[][] f2196f;

    /* renamed from: g  reason: collision with root package name */
    public List f2197g;

    /* renamed from: h  reason: collision with root package name */
    public Boolean f2198h;

    /* renamed from: i  reason: collision with root package name */
    public Integer f2199i;

    /* renamed from: j  reason: collision with root package name */
    public Integer f2200j;

    public C0115g() {
        this.f2197g = Collections.emptyList();
        this.f2196f = (Object[][]) Array.newInstance(Object.class, 0, 2);
    }

    public final Object a(C0113f c0113f) {
        O2.m.h(c0113f, "key");
        int i4 = 0;
        while (true) {
            Object[][] objArr = this.f2196f;
            if (i4 >= objArr.length) {
                return null;
            }
            if (c0113f.equals(objArr[i4][0])) {
                return this.f2196f[i4][1];
            }
            i4++;
        }
    }

    public final C0115g b(C0113f c0113f, Object obj) {
        O2.m.h(c0113f, "key");
        C0115g c0115g = new C0115g(this);
        int i4 = 0;
        while (true) {
            Object[][] objArr = this.f2196f;
            if (i4 >= objArr.length) {
                i4 = -1;
                break;
            } else if (c0113f.equals(objArr[i4][0])) {
                break;
            } else {
                i4++;
            }
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance(Object.class, this.f2196f.length + (i4 == -1 ? 1 : 0), 2);
        c0115g.f2196f = objArr2;
        Object[][] objArr3 = this.f2196f;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        if (i4 == -1) {
            c0115g.f2196f[this.f2196f.length] = new Object[]{c0113f, obj};
        } else {
            c0115g.f2196f[i4] = new Object[]{c0113f, obj};
        }
        return c0115g;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2191a, "deadline");
        b4.a(this.f2193c, "authority");
        b4.a(this.f2194d, "callCredentials");
        Executor executor = this.f2192b;
        b4.a(executor != null ? executor.getClass() : null, "executor");
        b4.a(this.f2195e, "compressorName");
        b4.a(Arrays.deepToString(this.f2196f), "customOptions");
        b4.c("waitForReady", Boolean.TRUE.equals(this.f2198h));
        b4.a(this.f2199i, "maxInboundMessageSize");
        b4.a(this.f2200j, "maxOutboundMessageSize");
        b4.a(this.f2197g, "streamTracerFactories");
        return b4.toString();
    }

    public C0115g(C0115g c0115g) {
        this.f2197g = Collections.emptyList();
        this.f2191a = c0115g.f2191a;
        this.f2193c = c0115g.f2193c;
        this.f2194d = c0115g.f2194d;
        this.f2192b = c0115g.f2192b;
        this.f2195e = c0115g.f2195e;
        this.f2196f = c0115g.f2196f;
        this.f2198h = c0115g.f2198h;
        this.f2199i = c0115g.f2199i;
        this.f2200j = c0115g.f2200j;
        this.f2197g = c0115g.f2197g;
    }
}
