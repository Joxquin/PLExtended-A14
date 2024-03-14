package l1;

import com.android.systemui.monet.Style;
/* renamed from: l1.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1274i {

    /* renamed from: h  reason: collision with root package name */
    public static final com.android.systemui.monet.a f11534h = new com.android.systemui.monet.a();

    /* renamed from: a  reason: collision with root package name */
    public final int f11535a;

    /* renamed from: b  reason: collision with root package name */
    public final Style f11536b;

    /* renamed from: c  reason: collision with root package name */
    public final C1285t f11537c;

    /* renamed from: d  reason: collision with root package name */
    public final C1285t f11538d;

    /* renamed from: e  reason: collision with root package name */
    public final C1285t f11539e;

    /* renamed from: f  reason: collision with root package name */
    public final C1285t f11540f;

    /* renamed from: g  reason: collision with root package name */
    public final C1285t f11541g;

    /* JADX WARN: Code restructure failed: missing block: B:122:0x03ca, code lost:
        if (r4 == 15) goto L148;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1274i(android.app.WallpaperColors r23, com.android.systemui.monet.Style r24) {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l1.C1274i.<init>(android.app.WallpaperColors, com.android.systemui.monet.Style):void");
    }

    public final String toString() {
        String b4 = com.android.systemui.monet.a.b(this.f11535a);
        String a4 = com.android.systemui.monet.a.a("PRIMARY", this.f11537c.f11555c);
        String a5 = com.android.systemui.monet.a.a("SECONDARY", this.f11538d.f11555c);
        String a6 = com.android.systemui.monet.a.a("TERTIARY", this.f11539e.f11555c);
        String a7 = com.android.systemui.monet.a.a("NEUTRAL", this.f11540f.f11555c);
        String a8 = com.android.systemui.monet.a.a("NEUTRAL VARIANT", this.f11541g.f11555c);
        return "ColorScheme {\n  seed color: " + b4 + "\n  style: " + this.f11536b + "\n  palettes: \n  " + a4 + "\n  " + a5 + "\n  " + a6 + "\n  " + a7 + "\n  " + a8 + "\n}";
    }
}
