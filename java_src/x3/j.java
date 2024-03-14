package x3;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class j extends InputStream {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f12904d;

    public j(k kVar) {
        this.f12904d = kVar;
    }

    @Override // java.io.InputStream
    public final int available() {
        k kVar = this.f12904d;
        if (kVar.f12907f) {
            throw new IOException("closed");
        }
        return (int) Math.min(kVar.f12906e.f12892e, Integer.MAX_VALUE);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12904d.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        k kVar = this.f12904d;
        if (!kVar.f12907f) {
            b bVar = kVar.f12906e;
            if (bVar.f12892e == 0 && kVar.f12905d.g(bVar, 8192L) == -1) {
                return -1;
            }
            return this.f12904d.f12906e.c() & 255;
        }
        throw new IOException("closed");
    }

    public final String toString() {
        k kVar = this.f12904d;
        return kVar + ".inputStream()";
    }

    @Override // java.io.InputStream
    public final int read(byte[] data, int i4, int i5) {
        kotlin.jvm.internal.h.e(data, "data");
        if (!this.f12904d.f12907f) {
            a.b(data.length, i4, i5);
            k kVar = this.f12904d;
            b bVar = kVar.f12906e;
            if (bVar.f12892e == 0 && kVar.f12905d.g(bVar, 8192L) == -1) {
                return -1;
            }
            return this.f12904d.f12906e.read(data, i4, i5);
        }
        throw new IOException("closed");
    }
}
