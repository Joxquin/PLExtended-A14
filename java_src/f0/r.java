package f0;

import android.app.PendingIntent;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
/* loaded from: classes.dex */
public final class r implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Button f9242d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ x f9243e;

    public r(x xVar, Button button) {
        this.f9243e = xVar;
        this.f9242d = button;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            x xVar = this.f9243e;
            if (xVar.f9073d != null) {
                int b4 = xVar.b();
                x xVar2 = this.f9243e;
                C0836c c0836c = new C0836c(b4, 4, 0, xVar2.f9261I);
                ((SearchResultIconSlice) xVar2.f9073d).k(xVar2.f9262J.f9085a, c0836c);
            }
            x xVar3 = this.f9243e;
            xVar3.f9259G = xVar3.f9262J.f9085a.a(xVar3.getContext(), null);
            x xVar4 = this.f9243e;
            if (xVar4.f9259G) {
                E e4 = xVar4.f9081l;
                if (e4 != null) {
                    e4.c(xVar4.f9262J.f9085a, xVar4.f9261I);
                }
                x xVar5 = this.f9243e;
                xVar5.f9258F.add(xVar5.f9262J.f9085a);
                this.f9242d.setVisibility(8);
            }
            this.f9243e.A();
        } catch (PendingIntent.CanceledException e5) {
            Log.e("RowView", "PendingIntent for slice cannot be sent", e5);
        }
    }
}
