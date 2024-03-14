package L1;

import android.view.View;
/* loaded from: classes.dex */
public final class x0 implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ X1.s f1296d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f1297e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ A0 f1298f;

    public x0(A0 a02, X1.s sVar, String str) {
        this.f1298f = a02;
        this.f1296d = sVar;
        this.f1297e = str;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        X1.s sVar = this.f1296d;
        String str = this.f1297e;
        X1.u uVar = sVar.f2062a.f2064b;
        uVar.f2083u = true;
        uVar.endLiveTileMode(new X1.r(sVar, str, 0));
        this.f1298f.b(false);
        this.f1298f.f1037i = true;
        return true;
    }
}
