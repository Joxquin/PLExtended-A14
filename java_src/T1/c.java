package T1;

import android.content.Intent;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1695a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f1696b;

    public /* synthetic */ c(g gVar, int i4) {
        this.f1695a = i4;
        this.f1696b = gVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1695a) {
            case 0:
                Intent intent = (Intent) obj;
                this.f1696b.f();
                return;
            default:
                g gVar = this.f1696b;
                gVar.f1704d.registerPkgActions(gVar.f1703c, (String) obj, "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_CHANGED");
                return;
        }
    }
}
