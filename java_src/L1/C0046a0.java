package L1;

import J1.C0022e;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.Log;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.ui.CanceledException;
import java.util.List;
import java.util.UUID;
import java.util.function.Supplier;
/* renamed from: L1.a0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0046a0 {

    /* renamed from: a  reason: collision with root package name */
    public final long f1138a;

    /* renamed from: b  reason: collision with root package name */
    public final String f1139b;

    /* renamed from: c  reason: collision with root package name */
    public final String f1140c;

    /* renamed from: d  reason: collision with root package name */
    public final ComponentName f1141d;

    /* renamed from: e  reason: collision with root package name */
    public final AbstractC0048c f1142e;

    /* renamed from: f  reason: collision with root package name */
    public final RectF f1143f;

    /* renamed from: g  reason: collision with root package name */
    public final PointF f1144g;

    /* renamed from: j  reason: collision with root package name */
    public final P f1147j;

    /* renamed from: k  reason: collision with root package name */
    public final int f1148k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f1149l;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f1146i = new RectF(-1.0f, -1.0f, -1.0f, -1.0f);

    /* renamed from: n  reason: collision with root package name */
    public String f1151n = "";

    /* renamed from: h  reason: collision with root package name */
    public final Bitmap f1145h = null;

    /* renamed from: m  reason: collision with root package name */
    public final Bundle f1150m = null;

    public C0046a0(C0054i c0054i, RectF rectF, PointF pointF, long j4, int i4, ComponentName componentName, P p4) {
        this.f1142e = c0054i;
        this.f1143f = new RectF(rectF);
        this.f1144g = new PointF(pointF.x, pointF.y);
        this.f1138a = j4;
        this.f1148k = i4;
        this.f1139b = componentName.getPackageName();
        this.f1140c = componentName.getClassName();
        this.f1147j = p4;
        this.f1141d = componentName;
    }

    public static void a(C0046a0 c0046a0, C0022e c0022e, Y y4) {
        synchronized (c0046a0) {
            if (c0046a0.f1149l) {
                M1.b.f("handleContentData failed, all pending invocations were cancelled");
                c0046a0.j(new CanceledException("Content extraction cancelled."));
                return;
            }
            M1.b.c("Fetched contents\n\n" + M1.b.b(c0022e));
            AbstractC0048c abstractC0048c = c0046a0.f1142e;
            abstractC0048c.f1157a.execute(new S(c0046a0, c0022e, y4, c0022e));
        }
    }

    public static void b(final C0046a0 c0046a0, final C0022e c0022e, final EntitiesData entitiesData, final Z z4, boolean z5) {
        synchronized (c0046a0) {
            if (c0046a0.f1149l) {
                c0046a0.j(new CanceledException("Entity extraction cancelled"));
                return;
            }
            String e4 = M1.b.e(entitiesData);
            if (M1.b.f1361a.f1360a) {
                Log.v("AiAiSuggestUi", e4);
            }
            final J1.A a4 = entitiesData.entities() == null ? new J1.A() : entitiesData.entities();
            if (z5) {
                c0046a0.f1142e.f1157a.execute(new Runnable() { // from class: L1.V
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0046a0 c0046a02 = C0046a0.this;
                        Z z6 = z4;
                        C0022e c0022e2 = c0022e;
                        EntitiesData entitiesData2 = entitiesData;
                        synchronized (c0046a02) {
                            c0046a02.f1147j.a();
                            z6.a(c0022e2, entitiesData2);
                        }
                    }
                });
            } else {
                c0046a0.f1142e.f1157a.execute(new U(c0046a0, a4, 1));
                z4.a(c0022e, entitiesData);
            }
        }
    }

    public final void c(RectF rectF) {
        float width = rectF.width();
        PointF pointF = this.f1144g;
        float f4 = width * pointF.x;
        float height = rectF.height();
        float f5 = pointF.y;
        RectF rectF2 = this.f1143f;
        float f6 = (rectF2.left + rectF.left) * pointF.x;
        rectF.left = f6;
        float f7 = (rectF2.top + rectF.top) * f5;
        rectF.top = f7;
        rectF.right = f6 + f4;
        rectF.bottom = f7 + (height * f5);
    }

    public final void d(PointF pointF) {
        float f4 = pointF.x;
        PointF pointF2 = this.f1144g;
        pointF.x = f4 / pointF2.x;
        pointF.y /= pointF2.y;
        RectF rectF = this.f1143f;
        pointF.offset(-rectF.left, -rectF.top);
    }

    public final void e(RectF rectF) {
        float width = rectF.width();
        PointF pointF = this.f1144g;
        float f4 = width / pointF.x;
        float height = rectF.height();
        float f5 = pointF.y;
        RectF rectF2 = this.f1143f;
        float f6 = (rectF.left / pointF.x) - rectF2.left;
        rectF.left = f6;
        float f7 = (rectF.top / f5) - rectF2.top;
        rectF.top = f7;
        rectF.right = f6 + f4;
        rectF.bottom = f7 + (height / f5);
    }

    public final synchronized void f(final C0022e c0022e, final J1.t tVar, final K1.a aVar, final Z z4, final boolean z5) {
        M1.b.f("Extracting entities.");
        if (this.f1149l) {
            j(new CanceledException("Entity extraction cancelled."));
            return;
        }
        AbstractC0048c abstractC0048c = this.f1142e;
        abstractC0048c.f1158b.execute(new Runnable() { // from class: L1.T
            @Override // java.lang.Runnable
            public final void run() {
                C0046a0 c0046a0 = C0046a0.this;
                K1.a aVar2 = aVar;
                J1.t tVar2 = tVar;
                C0022e c0022e2 = c0022e;
                Z z6 = z4;
                boolean z7 = z5;
                synchronized (c0046a0) {
                    try {
                        AbstractC0048c abstractC0048c2 = c0046a0.f1142e;
                        String str = c0046a0.f1139b;
                        String str2 = c0046a0.f1140c;
                        int i4 = c0046a0.f1148k;
                        long j4 = c0046a0.f1138a;
                        Bundle bundle = c0046a0.f1150m;
                        aVar2.getClass();
                        abstractC0048c2.a(K1.a.a(str, str2, i4, j4, bundle, tVar2, c0022e2), new X(c0046a0, c0022e2, aVar2, z6, z7));
                    }
                }
            }
        });
    }

    public final synchronized void g(J1.t tVar, K1.a aVar, Y y4) {
        M1.b.f("Fetching contents, isPrimaryTask = " + tVar.f799i);
        String str = "Contents new rect: " + this.f1146i;
        if (M1.b.f1361a.f1360a) {
            Log.v("AiAiSuggestUi", str);
        }
        this.f1142e.f1158b.execute(new S(this, aVar, tVar, y4));
    }

    public final String h() {
        String str = this.f1151n;
        if (str == null || str.isEmpty()) {
            String format = String.format("%s_%s_%s", this.f1141d.toShortString(), Integer.valueOf(this.f1148k), Long.valueOf(this.f1138a));
            int i4 = M1.c.f1362a;
            this.f1151n = "task_snapshot_" + UUID.nameUUIDFromBytes(format.getBytes());
        }
        return this.f1151n;
    }

    public final synchronized void i(String str, final K1.a aVar, final J1.n nVar) {
        List list = nVar.f761a;
        if (list != null) {
            int i4 = M1.c.f1362a;
            if (!list.isEmpty()) {
                this.f1142e.b(nVar, this.f1147j, str, new Supplier() { // from class: L1.Q
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        K1.a aVar2 = K1.a.this;
                        J1.n nVar2 = nVar;
                        aVar2.getClass();
                        return K1.a.b(nVar2);
                    }
                });
            }
        }
    }

    public final void j(Throwable th) {
        M1.b.f("Canceling suggestion interaction.");
        this.f1142e.f1157a.execute(new U(this, th, 0));
    }

    public final synchronized void k(boolean z4) {
        this.f1149l = z4;
        if (z4) {
            this.f1146i.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }
    }
}
