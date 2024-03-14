package io.grpc.binder.internal;

import X2.L0;
import Y2.n;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class h implements ServiceConnection {

    /* renamed from: k  reason: collision with root package name */
    public static final Logger f9807k = Logger.getLogger(h.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public final Intent f9808d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9809e;

    /* renamed from: f  reason: collision with root package name */
    public final Y2.a f9810f;

    /* renamed from: g  reason: collision with root package name */
    public final Executor f9811g;

    /* renamed from: h  reason: collision with root package name */
    public ServiceBinding$State f9812h;

    /* renamed from: i  reason: collision with root package name */
    public Context f9813i;

    /* renamed from: j  reason: collision with root package name */
    public ServiceBinding$State f9814j;

    public h(Executor executor, Context context, Intent intent, int i4, Y2.a aVar) {
        synchronized (this) {
            this.f9808d = intent;
            this.f9809e = i4;
            this.f9810f = aVar;
            this.f9813i = context;
            this.f9811g = executor;
            ServiceBinding$State serviceBinding$State = ServiceBinding$State.NOT_BINDING;
            this.f9812h = serviceBinding$State;
            this.f9814j = serviceBinding$State;
        }
    }

    public static L0 b(Context context, Intent intent, h hVar, int i4) {
        try {
            if (context.bindService(intent, hVar, i4)) {
                return L0.f2126e;
            }
            L0 l02 = L0.f2133l;
            return l02.f("bindService(" + intent + ") returned false");
        } catch (SecurityException e4) {
            return L0.f2130i.e(e4).f("SecurityException from bindService");
        } catch (RuntimeException e5) {
            return L0.f2134m.e(e5).f("RuntimeException from bindService");
        }
    }

    public final synchronized void a() {
        if (this.f9812h == ServiceBinding$State.NOT_BINDING) {
            this.f9812h = ServiceBinding$State.BINDING;
            L0 b4 = b(this.f9813i, this.f9808d, this, this.f9809e);
            if (!b4.d()) {
                this.f9812h = ServiceBinding$State.UNBOUND;
                this.f9811g.execute(new n(this, b4, 1));
            }
        }
    }

    public final void c(L0 l02) {
        Logger logger = f9807k;
        Level level = Level.FINEST;
        logger.log(level, "notify unbound ", l02);
        this.f9813i = null;
        ServiceBinding$State serviceBinding$State = this.f9814j;
        ServiceBinding$State serviceBinding$State2 = ServiceBinding$State.UNBOUND;
        if (serviceBinding$State != serviceBinding$State2) {
            this.f9814j = serviceBinding$State2;
            logger.log(level, "notify unbound - notifying");
            b bVar = (b) this.f9810f;
            synchronized (bVar) {
                bVar.q(l02, true);
            }
        }
    }

    public final void d(L0 l02) {
        Context context;
        synchronized (this) {
            ServiceBinding$State serviceBinding$State = this.f9812h;
            if (serviceBinding$State != ServiceBinding$State.BINDING && serviceBinding$State != ServiceBinding$State.BOUND) {
                context = null;
                this.f9812h = ServiceBinding$State.UNBOUND;
            }
            context = this.f9813i;
            this.f9812h = ServiceBinding$State.UNBOUND;
        }
        this.f9811g.execute(new n(this, l02, 0));
        if (context != null) {
            context.unbindService(this);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        L0 l02 = L0.f2135n;
        d(l02.f("onBindingDied: " + componentName));
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        L0 l02 = L0.f2133l;
        d(l02.f("onNullBinding: " + componentName));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean z4;
        synchronized (this) {
            if (this.f9812h == ServiceBinding$State.BINDING) {
                this.f9812h = ServiceBinding$State.BOUND;
                z4 = true;
            } else {
                z4 = false;
            }
        }
        if (z4 && this.f9814j == ServiceBinding$State.NOT_BINDING) {
            this.f9814j = ServiceBinding$State.BOUND;
            f9807k.log(Level.FINEST, "notify bound - notifying");
            b bVar = (b) this.f9810f;
            synchronized (bVar) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInt(1);
                obtain.writeStrongBinder(bVar.f9761g);
                try {
                    if (!iBinder.transact(1, obtain, null, 1)) {
                        bVar.q(L0.f2135n.f("Failed sending SETUP_TRANSPORT transaction"), true);
                    }
                } catch (RemoteException e4) {
                    bVar.q(c.r(e4), true);
                }
                obtain.recycle();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        L0 l02 = L0.f2135n;
        d(l02.f("onServiceDisconnected: " + componentName));
    }
}
