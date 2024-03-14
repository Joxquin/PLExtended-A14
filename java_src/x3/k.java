package x3;

import java.io.EOFException;
import java.nio.ByteBuffer;
import okio.ByteString;
/* loaded from: classes.dex */
public final class k implements c {

    /* renamed from: d  reason: collision with root package name */
    public final n f12905d;

    /* renamed from: e  reason: collision with root package name */
    public final b f12906e = new b();

    /* renamed from: f  reason: collision with root package name */
    public boolean f12907f;

    public k(n nVar) {
        this.f12905d = nVar;
    }

    public final k a() {
        return new k(new i(this));
    }

    public final byte b() {
        if (f(1L)) {
            return this.f12906e.c();
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f12907f) {
            return;
        }
        this.f12907f = true;
        this.f12905d.close();
        b bVar = this.f12906e;
        bVar.j(bVar.f12892e);
    }

    @Override // x3.c
    public final boolean f(long j4) {
        b bVar;
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j4).toString());
        } else if (!this.f12907f) {
            do {
                bVar = this.f12906e;
                if (bVar.f12892e >= j4) {
                    return true;
                }
            } while (this.f12905d.g(bVar, 8192L) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // x3.n
    public final long g(b sink, long j4) {
        kotlin.jvm.internal.h.e(sink, "sink");
        if (!this.f12907f) {
            b bVar = this.f12906e;
            if (bVar.f12892e == 0 && this.f12905d.g(bVar, 8192L) == -1) {
                return -1L;
            }
            return this.f12906e.g(sink, Math.min(8192L, this.f12906e.f12892e));
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f12907f;
    }

    @Override // x3.c
    public final b m() {
        return this.f12906e;
    }

    @Override // x3.c
    public final long p(ByteString targetBytes) {
        kotlin.jvm.internal.h.e(targetBytes, "targetBytes");
        if (!(!this.f12907f)) {
            throw new IllegalStateException("closed".toString());
        }
        long j4 = 0;
        while (true) {
            long b4 = this.f12906e.b(targetBytes, j4);
            if (b4 != -1) {
                return b4;
            }
            b bVar = this.f12906e;
            long j5 = bVar.f12892e;
            if (this.f12905d.g(bVar, 8192L) == -1) {
                return -1L;
            }
            j4 = Math.max(j4, j5);
        }
    }

    @Override // x3.c
    public final int q(h options) {
        kotlin.jvm.internal.h.e(options, "options");
        if (!this.f12907f) {
            while (true) {
                int a4 = y3.a.a(this.f12906e, options, true);
                if (a4 == -2) {
                    if (this.f12905d.g(this.f12906e, 8192L) == -1) {
                        break;
                    }
                } else if (a4 != -1) {
                    this.f12906e.j(options.f12896d[a4].d());
                    return a4;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        kotlin.jvm.internal.h.e(sink, "sink");
        b bVar = this.f12906e;
        if (bVar.f12892e == 0 && this.f12905d.g(bVar, 8192L) == -1) {
            return -1;
        }
        return this.f12906e.read(sink);
    }

    public final String toString() {
        n nVar = this.f12905d;
        return "buffer(" + nVar + ")";
    }
}
