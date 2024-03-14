package A0;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class c implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Context f8d;

    public c(Context context) {
        this.f8d = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        x xVar = g.f12j;
        return d.a(this.f8d);
    }
}
