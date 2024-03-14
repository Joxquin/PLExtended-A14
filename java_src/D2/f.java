package D2;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public final class f implements Handler.Callback {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f324d;

    public f(h hVar) {
        this.f324d = hVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        h hVar = this.f324d;
        g gVar = (g) message.obj;
        synchronized (hVar.f326a) {
            if (gVar == null || gVar == null) {
                gVar.getClass();
                throw null;
            }
        }
        return true;
    }
}
