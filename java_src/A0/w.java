package A0;

import android.os.SystemClock;
import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
public final class w implements ViewTreeObserver.OnDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public View f61d;

    /* renamed from: e  reason: collision with root package name */
    public final String f62e;

    /* renamed from: f  reason: collision with root package name */
    public final u f63f = new u();

    /* renamed from: g  reason: collision with root package name */
    public int f64g = -1;

    /* renamed from: h  reason: collision with root package name */
    public boolean f65h = true;

    /* renamed from: i  reason: collision with root package name */
    public final long[] f66i;

    /* renamed from: j  reason: collision with root package name */
    public final t[] f67j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f68k;

    /* renamed from: l  reason: collision with root package name */
    public final n f69l;

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ x f70m;

    public w(x xVar, View view, String str) {
        this.f70m = xVar;
        int i4 = xVar.f73a;
        this.f66i = new long[i4];
        this.f67j = new t[i4];
        this.f68k = true;
        this.f69l = new n(1, this);
        this.f61d = view;
        this.f62e = str;
    }

    public final u a(View view, u uVar) {
        x xVar = this.f70m;
        u uVar2 = xVar.f76d;
        if (uVar2 != null) {
            xVar.f76d = uVar2.f57f;
            uVar2.f57f = null;
        } else {
            uVar2 = new u();
        }
        uVar2.f55d = view;
        uVar.f57f = uVar2;
        if (!(view instanceof ViewGroup)) {
            uVar2.f56e = 0;
            return uVar2;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if ((view.mPrivateFlags & (-2145386496)) == 0 && !this.f65h) {
            uVar2.f56e = -viewGroup.getChildCount();
            return uVar2;
        }
        int childCount = viewGroup.getChildCount();
        uVar2.f56e = childCount;
        for (int i4 = 0; i4 < childCount; i4++) {
            uVar2 = a(viewGroup.getChildAt(i4), uVar2);
        }
        return uVar2;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        Trace.beginSection("view_capture");
        a(this.f61d, this.f63f);
        u uVar = this.f63f.f57f;
        if (uVar != null) {
            uVar.f58g = this.f69l;
            uVar.f59h = SystemClock.elapsedRealtimeNanos();
            this.f70m.f75c.execute(uVar);
        }
        this.f65h = false;
        Trace.endSection();
    }
}
