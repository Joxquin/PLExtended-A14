package io.grpc.binder.internal;

import O2.m;
import X2.C0107c;
import X2.L0;
import X2.r;
import Y2.l;
import android.os.Parcel;
import io.grpc.StatusException;
import io.grpc.internal.I2;
import io.grpc.internal.InterfaceC1055v;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.logging.Level;
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    public final c f9773a;

    /* renamed from: b  reason: collision with root package name */
    public final C0107c f9774b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9775c;

    /* renamed from: d  reason: collision with root package name */
    public g f9776d;

    /* renamed from: e  reason: collision with root package name */
    public I2 f9777e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC1055v f9778f;

    /* renamed from: g  reason: collision with root package name */
    public InputStream f9779g;

    /* renamed from: h  reason: collision with root package name */
    public int f9780h;

    /* renamed from: i  reason: collision with root package name */
    public int f9781i;

    /* renamed from: j  reason: collision with root package name */
    public ArrayList f9782j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f9783k;

    /* renamed from: l  reason: collision with root package name */
    public int f9784l;

    /* renamed from: m  reason: collision with root package name */
    public int f9785m;

    /* renamed from: n  reason: collision with root package name */
    public Inbound$State f9786n = Inbound$State.UNINITIALIZED;

    /* renamed from: o  reason: collision with root package name */
    public int f9787o;

    /* renamed from: p  reason: collision with root package name */
    public int f9788p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f9789q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f9790r;

    public e(c cVar, C0107c c0107c, int i4) {
        this.f9773a = cVar;
        this.f9774b = c0107c;
        this.f9775c = i4;
    }

    public final InputStream a() {
        InputStream dVar;
        int i4 = this.f9781i;
        this.f9781i = 0;
        if (i4 == 1) {
            Y2.g gVar = (Y2.g) this.f9782j.remove(0);
            int i5 = gVar.f2336c;
            dVar = gVar.f2334a;
            if (dVar == null) {
                dVar = new Y2.d(gVar.f2335b);
            }
        } else {
            byte[][] bArr = new byte[i4];
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                byte[] bArr2 = ((Y2.g) this.f9782j.remove(0)).f2335b;
                bArr2.getClass();
                bArr[i7] = bArr2;
                i6 += bArr2.length;
            }
            dVar = new Y2.d(bArr, i6);
        }
        this.f9780h += i4;
        j();
        return dVar;
    }

    public final void b(L0 l02, L0 l03, boolean z4) {
        Inbound$State inbound$State = this.f9786n;
        Inbound$State inbound$State2 = Inbound$State.CLOSED;
        if (inbound$State == inbound$State2) {
            return;
        }
        boolean z5 = inbound$State != Inbound$State.UNINITIALIZED;
        m(inbound$State2);
        if (z5) {
            I2 i22 = this.f9777e;
            if (i22.f9917b.compareAndSet(false, true)) {
                for (r rVar : i22.f9916a) {
                    rVar.l(l03);
                }
            }
        }
        c cVar = this.f9773a;
        if (!z4) {
            int i4 = this.f9775c;
            cVar.getClass();
            Parcel obtain = Parcel.obtain();
            obtain.writeInt(0);
            int d4 = l02.f2137a.d() << 16;
            String str = l02.f2138b;
            if (str != null && str.length() > 1000) {
                str = str.substring(0, 1000);
            }
            if (str != null) {
                d4 |= 32;
                obtain.writeString(str);
            }
            int i5 = d4 | 8;
            int dataPosition = obtain.dataPosition();
            obtain.setDataPosition(0);
            obtain.writeInt(i5);
            obtain.setDataPosition(dataPosition);
            try {
                cVar.o(obtain, i4);
            } catch (StatusException e4) {
                c.f9755p.log(Level.WARNING, "Failed sending oob close transaction", (Throwable) e4);
            }
            obtain.recycle();
        }
        if (z5) {
            e(l03);
        }
        cVar.s(this);
    }

    public boolean c() {
        return false;
    }

    public final void d() {
        if (this.f9789q) {
            return;
        }
        this.f9789q = true;
        while (true) {
            int ordinal = this.f9786n.ordinal();
            if (!(ordinal == 2 ? !(this.f9778f == null || this.f9790r || (!k() ? !(!this.f9783k || this.f9780h < this.f9784l) : this.f9788p != 0)) : ordinal == 3 && this.f9778f != null && this.f9783k)) {
                this.f9789q = false;
                return;
            }
            int ordinal2 = this.f9786n.ordinal();
            if (ordinal2 != 2) {
                if (ordinal2 != 3) {
                    throw new AssertionError();
                }
            } else if (!this.f9790r) {
                if (k()) {
                    this.f9790r = true;
                    this.f9778f.c(this);
                } else if (this.f9783k) {
                    m(Inbound$State.ALL_MESSAGES_DELIVERED);
                }
            }
            if (this.f9783k) {
                m(Inbound$State.SUFFIX_DELIVERED);
                f();
            }
        }
    }

    public abstract void e(L0 l02);

    public abstract void f();

    public final void g(int i4, int i5, Parcel parcel) {
        byte[] bArr;
        boolean z4;
        int i6;
        byte[] bArr2;
        l lVar;
        if ((i4 & 64) != 0) {
            io.grpc.binder.e eVar = (io.grpc.binder.e) this.f9774b.a(c.f9757r);
            if (eVar == null || !eVar.f9717b) {
                throw new StatusException(L0.f2130i.f("Parcelable messages not allowed"));
            }
            int dataPosition = parcel.dataPosition();
            ClassLoader classLoader = getClass().getClassLoader();
            int i7 = l.f2341f;
            l lVar2 = new l(parcel.readParcelable(classLoader));
            i6 = parcel.dataPosition() - dataPosition;
            bArr2 = null;
            z4 = true;
            lVar = lVar2;
        } else {
            int readInt = parcel.readInt();
            if (readInt != Y2.e.f2329a || (bArr = (byte[]) ((LinkedBlockingQueue) Y2.e.f2330b).poll()) == null) {
                bArr = new byte[readInt];
            }
            if (readInt > 0) {
                parcel.readByteArray(bArr);
            }
            z4 = (i4 & 128) == 0;
            i6 = readInt;
            bArr2 = bArr;
            lVar = null;
        }
        if (this.f9782j == null) {
            if (this.f9787o == 0 && z4 && i5 == this.f9780h) {
                m.m(this.f9779g == null);
                InputStream inputStream = lVar;
                if (lVar == null) {
                    inputStream = new Y2.d(bArr2);
                }
                this.f9779g = inputStream;
                n(i6);
                return;
            }
            this.f9782j = new ArrayList(16);
        }
        Y2.g gVar = new Y2.g(lVar, bArr2, i6, z4);
        int i8 = i5 - this.f9780h;
        if (i8 < this.f9782j.size()) {
            this.f9782j.set(i8, gVar);
            j();
        } else if (i8 <= this.f9782j.size()) {
            this.f9782j.add(gVar);
            j();
        } else {
            do {
                this.f9782j.add(null);
            } while (i8 > this.f9782j.size());
            this.f9782j.add(gVar);
        }
    }

    public abstract void h(Parcel parcel);

    public abstract void i(Parcel parcel, int i4);

    public final void j() {
        Y2.g gVar;
        if (this.f9781i == 0) {
            int i4 = 0;
            for (int i5 = 0; i5 < this.f9782j.size() && (gVar = (Y2.g) this.f9782j.get(i5)) != null; i5++) {
                i4 += gVar.f2336c;
                if (gVar.f2337d) {
                    this.f9781i = i5 + 1;
                    n(i4);
                    return;
                }
            }
        }
    }

    public final boolean k() {
        return this.f9779g != null || this.f9781i > 0;
    }

    public final synchronized InputStream l() {
        InputStream inputStream;
        inputStream = this.f9779g;
        if (inputStream != null) {
            this.f9779g = null;
        } else {
            inputStream = k() ? a() : null;
        }
        if (inputStream != null) {
            this.f9788p--;
        } else {
            this.f9790r = false;
            if (this.f9783k && this.f9780h >= this.f9784l) {
                if (!(this.f9786n == Inbound$State.CLOSED)) {
                    m(Inbound$State.ALL_MESSAGES_DELIVERED);
                    d();
                }
            }
        }
        return inputStream;
    }

    public final void m(Inbound$State inbound$State) {
        Inbound$State inbound$State2 = this.f9786n;
        int ordinal = inbound$State.ordinal();
        Inbound$State inbound$State3 = Inbound$State.UNINITIALIZED;
        if (ordinal == 1) {
            m.n(inbound$State2 == inbound$State3, inbound$State2, inbound$State);
        } else if (ordinal == 2) {
            if (inbound$State2 == Inbound$State.INITIALIZED || inbound$State2 == inbound$State3) {
                r3 = true;
            }
            m.n(r3, inbound$State2, inbound$State);
        } else if (ordinal == 3) {
            m.n(inbound$State2 == Inbound$State.PREFIX_DELIVERED, inbound$State2, inbound$State);
        } else if (ordinal == 4) {
            m.n(inbound$State2 == Inbound$State.ALL_MESSAGES_DELIVERED, inbound$State2, inbound$State);
        } else if (ordinal != 5) {
            throw new AssertionError();
        }
        this.f9786n = inbound$State;
    }

    public final void n(int i4) {
        this.f9777e.getClass();
        I2 i22 = this.f9777e;
        int i5 = this.f9787o;
        for (r rVar : i22.f9916a) {
            rVar.b(i5);
        }
        I2 i23 = this.f9777e;
        int i6 = this.f9787o;
        long j4 = i4;
        for (r rVar2 : i23.f9916a) {
            rVar2.c(i6, j4, j4);
        }
        this.f9787o++;
    }

    public final void o(int i4) {
        int i5 = this.f9785m + i4;
        this.f9785m = i5;
        I2 i22 = this.f9777e;
        if (i22 == null || i5 == 0) {
            return;
        }
        long j4 = i5;
        for (r rVar : i22.f9916a) {
            rVar.f(j4);
        }
        I2 i23 = this.f9777e;
        long j5 = this.f9785m;
        for (r rVar2 : i23.f9916a) {
            rVar2.e(j5);
        }
        this.f9785m = 0;
    }

    public final synchronized String toString() {
        StringBuilder sb;
        sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[SfxA=");
        sb.append(this.f9783k);
        sb.append("/De=");
        sb.append(this.f9786n);
        sb.append("/Msg=");
        sb.append(k());
        sb.append("/Lis=");
        sb.append(this.f9778f != null);
        sb.append("]");
        return sb.toString();
    }
}
