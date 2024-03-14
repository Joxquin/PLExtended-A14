package e;
/* renamed from: e.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0826s implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f8989d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f8990e;

    public /* synthetic */ RunnableC0826s(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, int i4) {
        this.f8989d = i4;
        this.f8990e = layoutInflater$Factory2C0803D;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (androidx.core.view.A.c(r0) != false) goto L21;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            int r0 = r5.f8989d
            r1 = 1
            r2 = 0
            switch(r0) {
                case 0: goto L8;
                default: goto L7;
            }
        L7:
            goto L26
        L8:
            e.D r0 = r5.f8990e
            int r3 = r0.f8817b0
            r1 = r1 & r3
            if (r1 == 0) goto L12
            r0.F(r2)
        L12:
            e.D r0 = r5.f8990e
            int r1 = r0.f8817b0
            r1 = r1 & 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L1f
            r1 = 108(0x6c, float:1.51E-43)
            r0.F(r1)
        L1f:
            e.D r5 = r5.f8990e
            r5.f8816a0 = r2
            r5.f8817b0 = r2
            return
        L26:
            e.D r0 = r5.f8990e
            android.widget.PopupWindow r3 = r0.f8838x
            androidx.appcompat.widget.ActionBarContextView r0 = r0.f8837w
            r4 = 55
            r3.showAtLocation(r0, r4, r2, r2)
            e.D r0 = r5.f8990e
            androidx.core.view.O r0 = r0.f8840z
            if (r0 == 0) goto L3a
            r0.b()
        L3a:
            e.D r0 = r5.f8990e
            boolean r3 = r0.f8791B
            if (r3 == 0) goto L4d
            android.view.ViewGroup r0 = r0.f8792C
            if (r0 == 0) goto L4d
            java.util.WeakHashMap r3 = androidx.core.view.J.f3079a
            boolean r0 = androidx.core.view.A.c(r0)
            if (r0 == 0) goto L4d
            goto L4e
        L4d:
            r1 = r2
        L4e:
            r0 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto L74
            e.D r1 = r5.f8990e
            androidx.appcompat.widget.ActionBarContextView r1 = r1.f8837w
            r3 = 0
            r1.setAlpha(r3)
            e.D r1 = r5.f8990e
            androidx.appcompat.widget.ActionBarContextView r3 = r1.f8837w
            androidx.core.view.O r3 = androidx.core.view.J.a(r3)
            r3.a(r0)
            r1.f8840z = r3
            e.D r0 = r5.f8990e
            androidx.core.view.O r0 = r0.f8840z
            e.u r1 = new e.u
            r1.<init>(r2, r5)
            r0.d(r1)
            goto L82
        L74:
            e.D r1 = r5.f8990e
            androidx.appcompat.widget.ActionBarContextView r1 = r1.f8837w
            r1.setAlpha(r0)
            e.D r5 = r5.f8990e
            androidx.appcompat.widget.ActionBarContextView r5 = r5.f8837w
            r5.setVisibility(r2)
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.RunnableC0826s.run():void");
    }
}
