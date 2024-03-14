package h2;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
/* loaded from: classes.dex */
public class m implements ServiceConnection {

    /* renamed from: d  reason: collision with root package name */
    public final Context f9528d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9529e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f9530f;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9533i;

    /* renamed from: h  reason: collision with root package name */
    public final String f9532h = "com.google.android.googlequicksearchbox";

    /* renamed from: g  reason: collision with root package name */
    public final l f9531g = new l(this);

    public m(Context context, int i4, Handler handler) {
        this.f9528d = context;
        this.f9529e = i4;
        this.f9530f = handler;
    }

    public final boolean a() {
        if (this.f9530f.getLooper() == Looper.myLooper()) {
            if (!this.f9533i) {
                try {
                    Context context = this.f9528d;
                    this.f9533i = context.bindService(h.b(context, this.f9532h), this, this.f9529e);
                } catch (SecurityException e4) {
                    Log.e("LauncherClient", "Unable to connect to overlay service", e4);
                }
            }
            return this.f9533i;
        }
        throw new IllegalThreadStateException();
    }

    public final void b() {
        Handler handler = this.f9530f;
        l lVar = this.f9531g;
        if (handler.getLooper() == Looper.myLooper()) {
            lVar.run();
        } else {
            handler.post(lVar);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
