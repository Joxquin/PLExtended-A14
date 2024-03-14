package androidx.constraintlayout.widget;

import android.view.View;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f2862a;

    /* renamed from: b  reason: collision with root package name */
    public int f2863b;

    /* renamed from: c  reason: collision with root package name */
    public int f2864c;

    /* renamed from: d  reason: collision with root package name */
    public int f2865d;

    /* renamed from: e  reason: collision with root package name */
    public int f2866e;

    /* renamed from: f  reason: collision with root package name */
    public int f2867f;

    /* renamed from: g  reason: collision with root package name */
    public int f2868g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f2869h;

    public e(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f2869h = constraintLayout;
        this.f2862a = constraintLayout2;
    }

    public static boolean a(int i4, int i5, int i6) {
        if (i4 == i5) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i4);
        return View.MeasureSpec.getMode(i5) == 1073741824 && (mode == Integer.MIN_VALUE || mode == 0) && i6 == View.MeasureSpec.getSize(i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0101, code lost:
        if (r9 == 2) goto L171;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(v.f r20, w.C1440b r21) {
        /*
            Method dump skipped, instructions count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.e.b(v.f, w.b):void");
    }
}
