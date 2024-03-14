package J;

import android.os.Process;
/* loaded from: classes.dex */
public final class m extends Thread {

    /* renamed from: d  reason: collision with root package name */
    public final int f607d;

    public m(Runnable runnable, String str, int i4) {
        super(runnable, str);
        this.f607d = i4;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f607d);
        super.run();
    }
}
