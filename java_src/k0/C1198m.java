package k0;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p0.C1346h;
import w0.C1446c;
/* renamed from: k0.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1198m {

    /* renamed from: c  reason: collision with root package name */
    public Map f11123c;

    /* renamed from: d  reason: collision with root package name */
    public Map f11124d;

    /* renamed from: e  reason: collision with root package name */
    public Map f11125e;

    /* renamed from: f  reason: collision with root package name */
    public List f11126f;

    /* renamed from: g  reason: collision with root package name */
    public q.n f11127g;

    /* renamed from: h  reason: collision with root package name */
    public q.j f11128h;

    /* renamed from: i  reason: collision with root package name */
    public List f11129i;

    /* renamed from: j  reason: collision with root package name */
    public Rect f11130j;

    /* renamed from: k  reason: collision with root package name */
    public float f11131k;

    /* renamed from: l  reason: collision with root package name */
    public float f11132l;

    /* renamed from: m  reason: collision with root package name */
    public float f11133m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f11134n;

    /* renamed from: a  reason: collision with root package name */
    public final M f11121a = new M();

    /* renamed from: b  reason: collision with root package name */
    public final HashSet f11122b = new HashSet();

    /* renamed from: o  reason: collision with root package name */
    public int f11135o = 0;

    public final void a(String str) {
        C1446c.b(str);
        this.f11122b.add(str);
    }

    public final float b() {
        return ((this.f11132l - this.f11131k) / this.f11133m) * 1000.0f;
    }

    public final C1346h c(String str) {
        int size = this.f11126f.size();
        for (int i4 = 0; i4 < size; i4++) {
            C1346h c1346h = (C1346h) this.f11126f.get(i4);
            String str2 = c1346h.f11923a;
            boolean z4 = true;
            if (!str2.equalsIgnoreCase(str) && (!str2.endsWith("\r") || !str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                z4 = false;
            }
            if (z4) {
                return c1346h;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (s0.e eVar : this.f11129i) {
            sb.append(eVar.a("\t"));
        }
        return sb.toString();
    }
}
