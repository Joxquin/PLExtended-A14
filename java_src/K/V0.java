package k;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
/* loaded from: classes.dex */
public final class V0 implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Toolbar f10836d;

    public V0(Toolbar toolbar) {
        this.f10836d = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        androidx.appcompat.widget.a aVar = this.f10836d.f2655O;
        j.r rVar = aVar == null ? null : aVar.f2686e;
        if (rVar != null) {
            rVar.collapseActionView();
        }
    }
}
