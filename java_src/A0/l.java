package A0;

import android.media.permission.SafeCloseable;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final /* synthetic */ class l implements SafeCloseable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ x f20d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ w f21e;

    public /* synthetic */ l(x xVar, w wVar) {
        this.f20d = xVar;
        this.f21e = wVar;
    }

    public final void close() {
        x xVar = this.f20d;
        w wVar = this.f21e;
        ((ArrayList) xVar.f74b).remove(wVar);
        wVar.f68k = false;
        View view = wVar.f61d;
        if (view != null) {
            view.getViewTreeObserver().removeOnDrawListener(wVar);
        }
    }
}
