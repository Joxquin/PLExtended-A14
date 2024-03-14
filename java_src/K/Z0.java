package k;

import android.view.View;
import android.view.Window;
import j.C1083a;
/* loaded from: classes.dex */
public final class Z0 implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final C1083a f10848d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.b f10849e;

    public Z0(androidx.appcompat.widget.b bVar) {
        this.f10849e = bVar;
        this.f10848d = new C1083a(bVar.f2688a.getContext(), bVar.f2695h);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        androidx.appcompat.widget.b bVar = this.f10849e;
        Window.Callback callback = bVar.f2698k;
        if (callback == null || !bVar.f2699l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f10848d);
    }
}
