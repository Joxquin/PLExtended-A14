package b0;

import android.database.ContentObserver;
import android.os.AsyncTask;
import android.os.Handler;
/* loaded from: classes.dex */
public final class k extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l f4170a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, Handler handler) {
        super(handler);
        this.f4170a = lVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        AsyncTask.execute(this.f4170a.f4175e);
    }
}
