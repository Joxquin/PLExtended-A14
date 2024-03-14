package J;

import android.os.Handler;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f610d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final L.a f611e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f612f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f613g;

    public o(Handler handler, g gVar, h hVar) {
        this.f612f = gVar;
        this.f611e = hVar;
        this.f613g = handler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.f610d) {
            case 0:
                this.f611e.accept(this.f612f);
                return;
            default:
                try {
                    obj = ((Callable) this.f612f).call();
                } catch (Exception unused) {
                    obj = null;
                }
                ((Handler) this.f613g).post(new o(this, this.f611e, obj));
                return;
        }
    }

    public o(o oVar, L.a aVar, Object obj) {
        this.f613g = oVar;
        this.f611e = aVar;
        this.f612f = obj;
    }
}
