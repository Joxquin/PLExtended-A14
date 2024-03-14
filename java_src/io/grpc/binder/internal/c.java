package io.grpc.binder.internal;

import O2.m;
import X2.C0105b;
import X2.C0107c;
import X2.L0;
import X2.Q;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import io.grpc.StatusException;
import io.grpc.internal.H1;
import io.grpc.internal.InterfaceC1055v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class c implements Y2.h, IBinder.DeathRecipient {

    /* renamed from: p  reason: collision with root package name */
    public static final Logger f9755p = Logger.getLogger(c.class.getName());

    /* renamed from: q  reason: collision with root package name */
    public static final C0105b f9756q = new C0105b("remote-uid");

    /* renamed from: r  reason: collision with root package name */
    public static final C0105b f9757r = new C0105b("inbound-parcelable-policy");

    /* renamed from: d  reason: collision with root package name */
    public final H1 f9758d;

    /* renamed from: e  reason: collision with root package name */
    public final ScheduledExecutorService f9759e;

    /* renamed from: f  reason: collision with root package name */
    public final Q f9760f;

    /* renamed from: i  reason: collision with root package name */
    public C0107c f9763i;

    /* renamed from: k  reason: collision with root package name */
    public L0 f9765k;

    /* renamed from: l  reason: collision with root package name */
    public IBinder f9766l;

    /* renamed from: o  reason: collision with root package name */
    public long f9769o;

    /* renamed from: j  reason: collision with root package name */
    public BinderTransport$TransportState f9764j = BinderTransport$TransportState.NOT_STARTED;

    /* renamed from: g  reason: collision with root package name */
    public final Y2.i f9761g = new Y2.i(this);

    /* renamed from: h  reason: collision with root package name */
    public final ConcurrentHashMap f9762h = new ConcurrentHashMap();

    /* renamed from: m  reason: collision with root package name */
    public final Y2.f f9767m = new Y2.f();

    /* renamed from: n  reason: collision with root package name */
    public final AtomicLong f9768n = new AtomicLong();

    public c(H1 h12, C0107c c0107c, Q q4) {
        this.f9758d = h12;
        this.f9763i = c0107c;
        this.f9760f = q4;
        this.f9759e = (ScheduledExecutorService) h12.a();
    }

    public static L0 r(RemoteException remoteException) {
        return ((remoteException instanceof DeadObjectException) || (remoteException instanceof TransactionTooLargeException)) ? L0.f2135n.e(remoteException) : L0.f2134m.e(remoteException);
    }

    public final void a(long j4) {
        boolean z4;
        g gVar;
        InterfaceC1055v interfaceC1055v;
        Y2.f fVar = this.f9767m;
        synchronized (fVar) {
            long j5 = fVar.f2332b;
            if (j5 - j4 >= 0) {
                j4 = j5;
            }
            fVar.f2332b = j4;
            if (fVar.f2331a - j4 >= 131072 || !fVar.f2333c) {
                z4 = false;
            } else {
                fVar.f2333c = false;
                z4 = true;
            }
        }
        if (z4) {
            f9755p.log(Level.FINE, "handleAcknowledgedBytes: Transmit Window No-Longer Full. Unblock calls: " + this);
            for (e eVar : this.f9762h.values()) {
                synchronized (eVar) {
                    gVar = eVar.f9776d;
                    interfaceC1055v = eVar.f9778f;
                }
                if (interfaceC1055v != null) {
                    interfaceC1055v.a();
                }
                if (gVar != null) {
                    try {
                        synchronized (gVar) {
                            gVar.d();
                        }
                    } catch (StatusException e4) {
                        synchronized (eVar) {
                            L0 a4 = e4.a();
                            eVar.b(a4, a4, false);
                        }
                    }
                }
            }
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final synchronized void binderDied() {
        q(L0.f2135n.f("binderDied"), true);
    }

    public final Q e() {
        return this.f9760f;
    }

    public void g(Parcel parcel) {
    }

    public void h(Parcel parcel) {
    }

    public final boolean i(Parcel parcel, int i4) {
        int readInt;
        if (i4 < 1001) {
            synchronized (this) {
                if (i4 == 1) {
                    h(parcel);
                } else if (i4 == 2) {
                    q(L0.f2135n.f("transport shutdown by peer"), true);
                } else if (i4 == 3) {
                    a(parcel.readLong());
                } else if (i4 != 4) {
                    if (i4 != 5) {
                        return false;
                    }
                    g(parcel);
                } else if (this.f9764j == BinderTransport$TransportState.READY) {
                    try {
                        this.f9766l.transact(5, parcel, null, 1);
                    } catch (RemoteException unused) {
                    }
                }
                return true;
            }
        }
        int dataSize = parcel.dataSize();
        e eVar = (e) this.f9762h.get(Integer.valueOf(i4));
        if (eVar == null) {
            synchronized (this) {
                if (!k()) {
                    eVar = null;
                }
            }
        }
        if (eVar != null) {
            synchronized (eVar) {
                if (!(eVar.f9786n == Inbound$State.CLOSED)) {
                    try {
                        readInt = parcel.readInt();
                    } catch (StatusException e4) {
                        L0 a4 = e4.a();
                        eVar.b(a4, a4, false);
                    }
                    if ((readInt & 8) != 0) {
                        L0 c4 = L0.c((16711680 & readInt) >> 16);
                        if ((readInt & 32) != 0) {
                            c4 = c4.f(parcel.readString());
                        }
                        eVar.b(c4, c4, true);
                    } else {
                        int readInt2 = parcel.readInt();
                        boolean z4 = (readInt & 1) != 0;
                        boolean z5 = (readInt & 2) != 0;
                        boolean z6 = (readInt & 4) != 0;
                        if (z4) {
                            eVar.h(parcel);
                            eVar.m(Inbound$State.PREFIX_DELIVERED);
                        }
                        if (z5) {
                            eVar.g(readInt, readInt2, parcel);
                        }
                        if (z6) {
                            eVar.i(parcel, readInt);
                            eVar.f9784l = readInt2;
                            eVar.f9783k = true;
                        }
                        int i5 = eVar.f9780h;
                        if (readInt2 == i5) {
                            ArrayList arrayList = eVar.f9782j;
                            if (arrayList == null) {
                                eVar.f9780h = i5 + 1;
                            } else if (!z5 && !z6) {
                                arrayList.remove(0);
                                eVar.f9780h++;
                            }
                        }
                        eVar.o(parcel.dataSize());
                        eVar.d();
                    }
                }
            }
        }
        if (this.f9768n.addAndGet(dataSize) - this.f9769o > 16384) {
            synchronized (this) {
                IBinder iBinder = this.f9766l;
                iBinder.getClass();
                long j4 = this.f9768n.get();
                this.f9769o = j4;
                Parcel obtain = Parcel.obtain();
                obtain.writeLong(j4);
                try {
                    if (!iBinder.transact(3, obtain, null, 1)) {
                        q(L0.f2135n.f("Failed sending ack bytes transaction"), true);
                    }
                } catch (RemoteException e5) {
                    q(r(e5), true);
                }
                obtain.recycle();
            }
        }
        return true;
    }

    public final boolean j(BinderTransport$TransportState binderTransport$TransportState) {
        return this.f9764j == binderTransport$TransportState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return j(BinderTransport$TransportState.SHUTDOWN) || j(BinderTransport$TransportState.SHUTDOWN_TERMINATED);
    }

    public abstract void l(L0 l02);

    public abstract void m();

    public void n() {
        this.f9758d.b(this.f9759e);
    }

    public final void o(Parcel parcel, int i4) {
        int dataSize = parcel.dataSize();
        try {
            boolean z4 = true;
            if (!this.f9766l.transact(i4, parcel, null, 1)) {
                throw new StatusException(L0.f2135n.f("Failed sending transaction"));
            }
            Y2.f fVar = this.f9767m;
            long j4 = dataSize;
            synchronized (fVar) {
                long j5 = fVar.f2331a + j4;
                fVar.f2331a = j5;
                if (j5 - fVar.f2332b < 131072 || fVar.f2333c) {
                    z4 = false;
                } else {
                    fVar.f2333c = true;
                }
            }
            if (z4) {
                f9755p.log(Level.FINE, "transmit window now full " + this);
            }
        } catch (RemoteException e4) {
            throw new StatusException(r(e4));
        }
    }

    public final void p(BinderTransport$TransportState binderTransport$TransportState) {
        BinderTransport$TransportState binderTransport$TransportState2 = this.f9764j;
        int ordinal = binderTransport$TransportState.ordinal();
        BinderTransport$TransportState binderTransport$TransportState3 = BinderTransport$TransportState.NOT_STARTED;
        if (ordinal != 1) {
            BinderTransport$TransportState binderTransport$TransportState4 = BinderTransport$TransportState.SETUP;
            if (ordinal == 2) {
                if (binderTransport$TransportState2 == binderTransport$TransportState3 || binderTransport$TransportState2 == binderTransport$TransportState4) {
                    r3 = true;
                }
                m.m(r3);
            } else if (ordinal == 3) {
                if (binderTransport$TransportState2 == binderTransport$TransportState3 || binderTransport$TransportState2 == binderTransport$TransportState4 || binderTransport$TransportState2 == BinderTransport$TransportState.READY) {
                    r3 = true;
                }
                m.m(r3);
            } else if (ordinal != 4) {
                throw new AssertionError();
            } else {
                m.m(binderTransport$TransportState2 == BinderTransport$TransportState.SHUTDOWN);
            }
        } else {
            m.m(binderTransport$TransportState2 == binderTransport$TransportState3);
        }
        this.f9764j = binderTransport$TransportState;
    }

    public final void q(final L0 l02, boolean z4) {
        if (!k()) {
            this.f9765k = l02;
            p(BinderTransport$TransportState.SHUTDOWN);
            l(l02);
        }
        BinderTransport$TransportState binderTransport$TransportState = BinderTransport$TransportState.SHUTDOWN_TERMINATED;
        if (j(binderTransport$TransportState)) {
            return;
        }
        if (z4 || this.f9762h.isEmpty()) {
            this.f9761g.f2339d = null;
            p(binderTransport$TransportState);
            IBinder iBinder = this.f9766l;
            if (iBinder != null) {
                try {
                    iBinder.unlinkToDeath(this, 0);
                } catch (NoSuchElementException unused) {
                }
                Parcel obtain = Parcel.obtain();
                try {
                    this.f9766l.transact(2, obtain, null, 1);
                } catch (RemoteException unused2) {
                }
                obtain.recycle();
            }
            final ArrayList arrayList = new ArrayList(this.f9762h.values());
            this.f9762h.clear();
            this.f9759e.execute(new Runnable() { // from class: Y2.b
                @Override // java.lang.Runnable
                public final void run() {
                    io.grpc.binder.internal.c cVar = io.grpc.binder.internal.c.this;
                    ArrayList arrayList2 = arrayList;
                    L0 l03 = l02;
                    cVar.getClass();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        io.grpc.binder.internal.e eVar = (io.grpc.binder.internal.e) it.next();
                        synchronized (eVar) {
                            eVar.b(l03, l03, false);
                        }
                    }
                    cVar.m();
                    cVar.n();
                }
            });
        }
    }

    public void s(e eVar) {
        if ((this.f9762h.remove(Integer.valueOf(eVar.f9775c)) != null) && this.f9762h.isEmpty()) {
            this.f9759e.execute(new Y2.c(this, 0));
        }
    }
}
