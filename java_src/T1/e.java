package T1;

import android.database.ContentObserver;
import android.os.Handler;
/* loaded from: classes.dex */
public final class e extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f1698a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(g gVar, Handler handler) {
        super(handler);
        this.f1698a = gVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        this.f1698a.f();
    }
}
