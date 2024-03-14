package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import r.C1367a;
/* loaded from: classes.dex */
public final class H0 {

    /* renamed from: g  reason: collision with root package name */
    public static H0 f10769g;

    /* renamed from: a  reason: collision with root package name */
    public WeakHashMap f10771a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakHashMap f10772b = new WeakHashMap(0);

    /* renamed from: c  reason: collision with root package name */
    public TypedValue f10773c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10774d;

    /* renamed from: e  reason: collision with root package name */
    public C1174z f10775e;

    /* renamed from: f  reason: collision with root package name */
    public static final PorterDuff.Mode f10768f = PorterDuff.Mode.SRC_IN;

    /* renamed from: h  reason: collision with root package name */
    public static final G0 f10770h = new G0();

    public static synchronized H0 c() {
        H0 h02;
        synchronized (H0.class) {
            if (f10769g == null) {
                f10769g = new H0();
            }
            h02 = f10769g;
        }
        return h02;
    }

    public static synchronized PorterDuffColorFilter g(int i4, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (H0.class) {
            G0 g02 = f10770h;
            g02.getClass();
            int i5 = (i4 + 31) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) g02.a(Integer.valueOf(mode.hashCode() + i5));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i4, mode);
                g02.getClass();
                PorterDuffColorFilter porterDuffColorFilter2 = (PorterDuffColorFilter) g02.b(Integer.valueOf(mode.hashCode() + i5), porterDuffColorFilter);
            }
        }
        return porterDuffColorFilter;
    }

    public final synchronized void a(Context context, long j4, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            q.j jVar = (q.j) this.f10772b.get(context);
            if (jVar == null) {
                jVar = new q.j();
                this.f10772b.put(context, jVar);
            }
            jVar.f(j4, new WeakReference(constantState));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable b(int r6, android.content.Context r7) {
        /*
            r5 = this;
            android.util.TypedValue r0 = r5.f10773c
            if (r0 != 0) goto Lb
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r5.f10773c = r0
        Lb:
            android.util.TypedValue r0 = r5.f10773c
            android.content.res.Resources r1 = r7.getResources()
            r2 = 1
            r1.getValue(r6, r0, r2)
            int r1 = r0.assetCookie
            long r1 = (long) r1
            r3 = 32
            long r1 = r1 << r3
            int r3 = r0.data
            long r3 = (long) r3
            long r1 = r1 | r3
            android.graphics.drawable.Drawable r3 = r5.d(r7, r1)
            if (r3 == 0) goto L26
            return r3
        L26:
            k.z r3 = r5.f10775e
            if (r3 != 0) goto L2b
            goto L6f
        L2b:
            r3 = 2131231155(0x7f0801b3, float:1.8078383E38)
            if (r6 != r3) goto L48
            android.graphics.drawable.LayerDrawable r6 = new android.graphics.drawable.LayerDrawable
            r3 = 2131231154(0x7f0801b2, float:1.807838E38)
            android.graphics.drawable.Drawable r3 = r5.e(r3, r7)
            r4 = 2131231156(0x7f0801b4, float:1.8078385E38)
            android.graphics.drawable.Drawable r4 = r5.e(r4, r7)
            android.graphics.drawable.Drawable[] r3 = new android.graphics.drawable.Drawable[]{r3, r4}
            r6.<init>(r3)
            goto L70
        L48:
            r3 = 2131231193(0x7f0801d9, float:1.807846E38)
            if (r6 != r3) goto L55
            r6 = 2131165272(0x7f070058, float:1.7944756E38)
            android.graphics.drawable.LayerDrawable r6 = k.C1174z.c(r5, r7, r6)
            goto L70
        L55:
            r3 = 2131231192(0x7f0801d8, float:1.8078458E38)
            if (r6 != r3) goto L62
            r6 = 2131165273(0x7f070059, float:1.7944758E38)
            android.graphics.drawable.LayerDrawable r6 = k.C1174z.c(r5, r7, r6)
            goto L70
        L62:
            r3 = 2131231194(0x7f0801da, float:1.8078462E38)
            if (r6 != r3) goto L6f
            r6 = 2131165274(0x7f07005a, float:1.794476E38)
            android.graphics.drawable.LayerDrawable r6 = k.C1174z.c(r5, r7, r6)
            goto L70
        L6f:
            r6 = 0
        L70:
            if (r6 == 0) goto L7a
            int r0 = r0.changingConfigurations
            r6.setChangingConfigurations(r0)
            r5.a(r7, r1, r6)
        L7a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.H0.b(int, android.content.Context):android.graphics.drawable.Drawable");
    }

    public final synchronized Drawable d(Context context, long j4) {
        q.j jVar = (q.j) this.f10772b.get(context);
        if (jVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) jVar.c(j4);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int b4 = C1367a.b(jVar.f11955e, jVar.f11957g, j4);
            if (b4 >= 0) {
                Object[] objArr = jVar.f11956f;
                Object obj = objArr[b4];
                Object obj2 = q.k.f11958a;
                if (obj != obj2) {
                    objArr[b4] = obj2;
                    jVar.f11954d = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable e(int i4, Context context) {
        return f(context, false, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
        if (r0 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
        r12.setTintMode(r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.graphics.drawable.Drawable f(android.content.Context r12, boolean r13, int r14) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.H0.f(android.content.Context, boolean, int):android.graphics.drawable.Drawable");
    }

    public final synchronized ColorStateList h(int i4, Context context) {
        ColorStateList colorStateList;
        q.n nVar;
        WeakHashMap weakHashMap = this.f10771a;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (nVar = (q.n) weakHashMap.get(context)) == null) ? null : (ColorStateList) nVar.c(i4);
        if (colorStateList == null) {
            C1174z c1174z = this.f10775e;
            if (c1174z != null) {
                colorStateList2 = c1174z.d(i4, context);
            }
            if (colorStateList2 != null) {
                if (this.f10771a == null) {
                    this.f10771a = new WeakHashMap();
                }
                q.n nVar2 = (q.n) this.f10771a.get(context);
                if (nVar2 == null) {
                    nVar2 = new q.n();
                    this.f10771a.put(context, nVar2);
                }
                nVar2.a(i4, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(android.content.Context r6, int r7, android.graphics.drawable.Drawable r8) {
        /*
            r5 = this;
            k.z r5 = r5.f10775e
            r0 = 0
            if (r5 == 0) goto L6e
            android.graphics.PorterDuff$Mode r1 = k.C1117A.f10717b
            int[] r2 = r5.f11033a
            boolean r2 = k.C1174z.a(r2, r7)
            r3 = 1
            r4 = -1
            if (r2 == 0) goto L15
            r5 = 2130968875(0x7f04012b, float:1.7546416E38)
            goto L48
        L15:
            int[] r2 = r5.f11035c
            boolean r2 = k.C1174z.a(r2, r7)
            if (r2 == 0) goto L21
            r5 = 2130968873(0x7f040129, float:1.7546412E38)
            goto L48
        L21:
            int[] r5 = r5.f11036d
            boolean r5 = k.C1174z.a(r5, r7)
            if (r5 == 0) goto L2c
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L45
        L2c:
            r5 = 2131231179(0x7f0801cb, float:1.8078432E38)
            if (r7 != r5) goto L40
            r5 = 1109603123(0x42233333, float:40.8)
            int r5 = java.lang.Math.round(r5)
            r7 = 16842800(0x1010030, float:2.3693693E-38)
            r2 = r1
            r1 = r7
            r7 = r5
            r5 = r3
            goto L50
        L40:
            r5 = 2131231158(0x7f0801b6, float:1.807839E38)
            if (r7 != r5) goto L4b
        L45:
            r5 = 16842801(0x1010031, float:2.3693695E-38)
        L48:
            r7 = r5
            r5 = r3
            goto L4d
        L4b:
            r5 = r0
            r7 = r5
        L4d:
            r2 = r1
            r1 = r7
            r7 = r4
        L50:
            if (r5 == 0) goto L6a
            android.graphics.Rect r5 = k.C1154o0.f10945a
            android.graphics.drawable.Drawable r5 = r8.mutate()
            int r6 = k.M0.c(r1, r6)
            android.graphics.PorterDuffColorFilter r6 = k.C1117A.c(r6, r2)
            r5.setColorFilter(r6)
            if (r7 == r4) goto L68
            r5.setAlpha(r7)
        L68:
            r5 = r3
            goto L6b
        L6a:
            r5 = r0
        L6b:
            if (r5 == 0) goto L6e
            r0 = r3
        L6e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.H0.i(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
