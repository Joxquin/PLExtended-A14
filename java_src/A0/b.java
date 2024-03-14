package A0;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes.dex */
public final class b extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f7a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(g gVar, Handler handler) {
        super(handler);
        this.f7a = gVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        g gVar = this.f7a;
        gVar.getClass();
        gVar.f75c.execute(new f(gVar));
    }
}
