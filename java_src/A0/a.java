package A0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class a implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public final Handler f6d;

    public a(Looper looper) {
        this.f6d = new Handler(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (this.f6d.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.f6d.post(runnable);
        }
    }
}
