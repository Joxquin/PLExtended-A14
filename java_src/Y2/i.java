package Y2;

import android.os.Binder;
import android.os.Parcel;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class i extends Binder {

    /* renamed from: e  reason: collision with root package name */
    public static final Logger f2338e = Logger.getLogger(i.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public h f2339d;

    public i(h hVar) {
        this.f2339d = hVar;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i5) {
        h hVar = this.f2339d;
        if (hVar != null) {
            try {
                return ((io.grpc.binder.internal.c) hVar).i(parcel, i4);
            } catch (RuntimeException e4) {
                Logger logger = f2338e;
                Level level = Level.WARNING;
                logger.log(level, "failure sending transaction " + i4, (Throwable) e4);
            }
        }
        return false;
    }

    @Override // android.os.Binder, android.os.IBinder
    public final boolean pingBinder() {
        return this.f2339d != null;
    }
}
