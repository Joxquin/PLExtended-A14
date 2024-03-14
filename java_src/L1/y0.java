package L1;

import android.view.View;
/* loaded from: classes.dex */
public final class y0 implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A0 f1300d;

    public y0(A0 a02) {
        this.f1300d = a02;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f1300d.b(false);
        this.f1300d.a();
        return true;
    }
}
