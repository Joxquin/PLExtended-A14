package io.grpc.binder.internal;

import O2.m;
import X2.C0132o0;
import X2.L0;
import X2.S;
import X2.r;
import X2.r0;
import X2.u0;
import Y2.l;
import android.os.Parcel;
import android.os.Parcelable;
import io.grpc.MethodDescriptor$MethodType;
import io.grpc.StatusException;
import io.grpc.internal.I2;
import java.io.InputStream;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final c f9793a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9794b;

    /* renamed from: c  reason: collision with root package name */
    public final I2 f9795c;

    /* renamed from: d  reason: collision with root package name */
    public Outbound$State f9796d = Outbound$State.INITIAL;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9797e;

    /* renamed from: f  reason: collision with root package name */
    public InputStream f9798f;

    /* renamed from: g  reason: collision with root package name */
    public Queue f9799g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f9800h;

    /* renamed from: i  reason: collision with root package name */
    public int f9801i;

    /* renamed from: j  reason: collision with root package name */
    public int f9802j;

    /* renamed from: k  reason: collision with root package name */
    public int f9803k;

    /* renamed from: l  reason: collision with root package name */
    public final u0 f9804l;

    /* renamed from: m  reason: collision with root package name */
    public final r0 f9805m;

    /* renamed from: n  reason: collision with root package name */
    public final I2 f9806n;

    public g(c cVar, int i4, u0 u0Var, r0 r0Var, I2 i22) {
        this.f9793a = cVar;
        this.f9794b = i4;
        this.f9795c = i22;
        this.f9804l = u0Var;
        this.f9805m = r0Var;
        this.f9806n = i22;
    }

    public final void a(InputStream inputStream) {
        this.f9797e = true;
        Queue queue = this.f9799g;
        if (queue != null) {
            ((ConcurrentLinkedQueue) queue).add(inputStream);
        } else if (this.f9798f == null) {
            this.f9798f = inputStream;
        } else {
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            this.f9799g = concurrentLinkedQueue;
            concurrentLinkedQueue.add(inputStream);
        }
    }

    public final boolean b() {
        Queue queue = this.f9799g;
        if (queue != null) {
            return !((ConcurrentLinkedQueue) queue).isEmpty();
        }
        if (this.f9798f != null) {
            return this.f9802j == 0;
        }
        return false;
    }

    public final void c(Outbound$State outbound$State) {
        Outbound$State outbound$State2 = this.f9796d;
        int ordinal = outbound$State.ordinal();
        if (ordinal == 1) {
            m.m(outbound$State2 == Outbound$State.INITIAL);
        } else if (ordinal == 2) {
            m.m(outbound$State2 == Outbound$State.PREFIX_SENT);
        } else if (ordinal == 3) {
            m.m(outbound$State2 == Outbound$State.ALL_MESSAGES_SENT);
        } else if (ordinal != 4) {
            throw new AssertionError();
        }
        this.f9796d = outbound$State;
    }

    public final void d() {
        while (true) {
            int ordinal = this.f9796d.ordinal();
            if (!((ordinal == 0 ? this.f9797e : ordinal == 1 ? b() || this.f9800h : ordinal == 2 && this.f9800h) ? !this.f9793a.f9767m.f2333c : false)) {
                return;
            }
            try {
                e();
            } catch (StatusException e4) {
                c(Outbound$State.CLOSED);
                throw e4;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009a A[Catch: all -> 0x00b8, IOException -> 0x00ba, LOOP:0: B:34:0x0098->B:35:0x009a, LOOP_END, TryCatch #0 {IOException -> 0x00ba, blocks: (B:3:0x0013, B:32:0x0073, B:33:0x007b, B:35:0x009a, B:36:0x00a2, B:38:0x00ac, B:9:0x0023, B:10:0x0028, B:17:0x0040, B:19:0x0044, B:25:0x0057, B:27:0x0064, B:29:0x0068, B:31:0x006e, B:26:0x005f, B:20:0x0047, B:22:0x004b, B:12:0x002b, B:14:0x003b), top: B:49:0x0013, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac A[Catch: all -> 0x00b8, IOException -> 0x00ba, TRY_LEAVE, TryCatch #0 {IOException -> 0x00ba, blocks: (B:3:0x0013, B:32:0x0073, B:33:0x007b, B:35:0x009a, B:36:0x00a2, B:38:0x00ac, B:9:0x0023, B:10:0x0028, B:17:0x0040, B:19:0x0044, B:25:0x0057, B:27:0x0064, B:29:0x0068, B:31:0x006e, B:26:0x005f, B:20:0x0047, B:22:0x004b, B:12:0x002b, B:14:0x003b), top: B:49:0x0013, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            r8 = this;
            io.grpc.internal.I2 r0 = r8.f9795c
            android.os.Parcel r1 = android.os.Parcel.obtain()
            r2 = 0
            r1.writeInt(r2)
            int r3 = r8.f9801i
            int r4 = r3 + 1
            r8.f9801i = r4
            r1.writeInt(r3)
            io.grpc.binder.internal.Outbound$State r3 = r8.f9796d     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r3 = r3.ordinal()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r4 = 1
            if (r3 == 0) goto L2b
            if (r3 == r4) goto L29
            r4 = 2
            if (r3 != r4) goto L23
            r3 = r2
            goto L73
        L23:
            java.lang.AssertionError r8 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r8.<init>()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            throw r8     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
        L29:
            r3 = r2
            goto L40
        L2b:
            int r3 = r8.h(r1)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r3 = r3 | r4
            io.grpc.binder.internal.Outbound$State r4 = io.grpc.binder.internal.Outbound$State.PREFIX_SENT     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r8.c(r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            boolean r4 = r8.b()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 != 0) goto L40
            boolean r4 = r8.f9800h     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 != 0) goto L40
            goto L7b
        L40:
            int r4 = r8.f9802j     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 != 0) goto L47
            java.io.InputStream r4 = r8.f9798f     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            goto L55
        L47:
            java.util.Queue r4 = r8.f9799g     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 == 0) goto L54
            java.util.concurrent.ConcurrentLinkedQueue r4 = (java.util.concurrent.ConcurrentLinkedQueue) r4     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            java.lang.Object r4 = r4.peek()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            java.io.InputStream r4 = (java.io.InputStream) r4     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            goto L55
        L54:
            r4 = 0
        L55:
            if (r4 == 0) goto L5f
            r3 = r3 | 2
            int r4 = r8.g(r1, r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r3 = r3 | r4
            goto L64
        L5f:
            boolean r4 = r8.f9800h     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            O2.m.m(r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
        L64:
            boolean r4 = r8.f9800h     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 == 0) goto L7b
            boolean r4 = r8.b()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            if (r4 != 0) goto L7b
            io.grpc.binder.internal.Outbound$State r4 = io.grpc.binder.internal.Outbound$State.ALL_MESSAGES_SENT     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r8.c(r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
        L73:
            r3 = r3 | 4
            r3 = r3 | r2
            io.grpc.binder.internal.Outbound$State r4 = io.grpc.binder.internal.Outbound$State.SUFFIX_SENT     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r8.c(r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
        L7b:
            int r4 = r1.dataPosition()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r1.setDataPosition(r2)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r1.writeInt(r3)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r1.setDataPosition(r4)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            io.grpc.binder.internal.c r3 = r8.f9793a     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r8 = r8.f9794b     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r3.o(r1, r8)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r8 = r1.dataSize()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            long r3 = (long) r8     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            X2.r[] r8 = r0.f9916a     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r5 = r8.length     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r6 = r2
        L98:
            if (r6 >= r5) goto La2
            r7 = r8[r6]     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r7.k(r3)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r6 = r6 + 1
            goto L98
        La2:
            int r8 = r1.dataSize()     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            long r3 = (long) r8     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            X2.r[] r8 = r0.f9916a     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r0 = r8.length     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
        Laa:
            if (r2 >= r0) goto Lb4
            r5 = r8[r2]     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            r5.j(r3)     // Catch: java.lang.Throwable -> Lb8 java.io.IOException -> Lba
            int r2 = r2 + 1
            goto Laa
        Lb4:
            r1.recycle()
            return
        Lb8:
            r8 = move-exception
            goto Lc7
        Lba:
            r8 = move-exception
            X2.L0 r0 = X2.L0.f2134m     // Catch: java.lang.Throwable -> Lb8
            X2.L0 r8 = r0.e(r8)     // Catch: java.lang.Throwable -> Lb8
            io.grpc.StatusException r0 = new io.grpc.StatusException     // Catch: java.lang.Throwable -> Lb8
            r0.<init>(r8)     // Catch: java.lang.Throwable -> Lb8
            throw r0     // Catch: java.lang.Throwable -> Lb8
        Lc7:
            r1.recycle()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.binder.internal.g.e():void");
    }

    /* renamed from: f */
    public final synchronized String toString() {
        return g.class.getSimpleName() + "[S=" + this.f9796d + "/NDM=" + this.f9802j + "]";
    }

    public final int g(Parcel parcel, InputStream inputStream) {
        boolean z4;
        int i4;
        if (inputStream instanceof l) {
            int dataPosition = parcel.dataPosition();
            Parcelable parcelable = ((l) inputStream).f2342d;
            parcel.writeParcelable(parcelable, parcelable.describeContents());
            this.f9803k = parcel.dataPosition() - dataPosition;
            i4 = 64;
            z4 = false;
        } else {
            byte[] bArr = (byte[]) ((LinkedBlockingQueue) Y2.e.f2330b).poll();
            if (bArr == null) {
                bArr = new byte[Y2.e.f2329a];
            }
            try {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(read);
                    parcel.writeByteArray(bArr, 0, read);
                    this.f9803k += read;
                    if (read == bArr.length) {
                        z4 = true;
                        i4 = 128;
                    }
                }
                z4 = false;
                i4 = 0;
            } finally {
                Y2.e.a(bArr);
            }
        }
        if (!z4) {
            inputStream.close();
            int i5 = this.f9802j;
            this.f9802j = i5 + 1;
            if (i5 > 0) {
                Queue queue = this.f9799g;
                queue.getClass();
                ((ConcurrentLinkedQueue) queue).poll();
            }
            I2 i22 = this.f9795c;
            for (r rVar : i22.f9916a) {
                rVar.h(i5);
            }
            long j4 = this.f9803k;
            for (r rVar2 : i22.f9916a) {
                rVar2.i(i5, j4, j4);
            }
            this.f9803k = 0;
        }
        return i4;
    }

    public final int h(Parcel parcel) {
        int i4;
        int read;
        u0 u0Var = this.f9804l;
        parcel.writeString(u0Var.f2231b);
        r0 r0Var = this.f9805m;
        if (r0Var != null) {
            int i5 = S.f2165a;
            i4 = r0Var.f2223b;
        } else {
            i4 = 0;
        }
        boolean z4 = true;
        if (i4 == 0) {
            parcel.writeInt(0);
        } else {
            int i6 = S.f2165a;
            Object[] objArr = new Object[r0Var.f2223b * 2];
            for (int i7 = 0; i7 < r0Var.f2223b; i7++) {
                int i8 = i7 * 2;
                Object[] objArr2 = r0Var.f2222a;
                objArr[i8] = (byte[]) objArr2[i8];
                int i9 = i8 + 1;
                l lVar = objArr2[i9];
                if (!(lVar instanceof byte[])) {
                    C0132o0 c0132o0 = (C0132o0) lVar;
                    lVar = c0132o0.f2210a.a(c0132o0.f2211b);
                }
                objArr[i9] = lVar;
            }
            parcel.writeInt(i4);
            for (int i10 = 0; i10 < i4; i10++) {
                int i11 = i10 * 2;
                byte[] bArr = (byte[]) objArr[i11];
                parcel.writeInt(bArr.length);
                parcel.writeByteArray(bArr);
                Object obj = objArr[i11 + 1];
                if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    parcel.writeInt(bArr2.length);
                    parcel.writeByteArray(bArr2);
                } else if (obj instanceof l) {
                    parcel.writeInt(-1);
                    l lVar2 = (l) obj;
                    lVar2.getClass();
                    parcel.dataPosition();
                    Parcelable parcelable = lVar2.f2342d;
                    parcel.writeParcelable(parcelable, parcelable.describeContents());
                    parcel.dataPosition();
                } else {
                    byte[] bArr3 = (byte[]) ((LinkedBlockingQueue) Y2.e.f2330b).poll();
                    if (bArr3 == null) {
                        bArr3 = new byte[Y2.e.f2329a];
                    }
                    try {
                        InputStream inputStream = (InputStream) obj;
                        int i12 = 0;
                        while (i12 < bArr3.length && (read = inputStream.read(bArr3, i12, bArr3.length - i12)) != -1) {
                            i12 += read;
                        }
                        if (i12 == bArr3.length) {
                            throw new StatusException(L0.f2132k.f("Metadata value too large"));
                        }
                        parcel.writeInt(i12);
                        if (i12 > 0) {
                            parcel.writeByteArray(bArr3, 0, i12);
                        }
                    } finally {
                        Y2.e.a(bArr3);
                    }
                }
            }
        }
        for (r rVar : this.f9806n.f9916a) {
            rVar.g();
        }
        MethodDescriptor$MethodType methodDescriptor$MethodType = u0Var.f2230a;
        methodDescriptor$MethodType.getClass();
        if (methodDescriptor$MethodType != MethodDescriptor$MethodType.UNARY && methodDescriptor$MethodType != MethodDescriptor$MethodType.CLIENT_STREAMING) {
            z4 = false;
        }
        return z4 ? 16 : 0;
    }
}
