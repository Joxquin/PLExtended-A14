package Z2;

import X2.T;
import com.google.protobuf.C0771p;
import com.google.protobuf.InterfaceC0772p0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.r;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class a extends InputStream implements T {

    /* renamed from: d  reason: collision with root package name */
    public InterfaceC0772p0 f2373d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0787x0 f2374e;

    /* renamed from: f  reason: collision with root package name */
    public ByteArrayInputStream f2375f;

    public a(InterfaceC0772p0 interfaceC0772p0, InterfaceC0787x0 interfaceC0787x0) {
        this.f2373d = interfaceC0772p0;
        this.f2374e = interfaceC0787x0;
    }

    @Override // java.io.InputStream
    public final int available() {
        InterfaceC0772p0 interfaceC0772p0 = this.f2373d;
        if (interfaceC0772p0 != null) {
            return interfaceC0772p0.getSerializedSize();
        }
        ByteArrayInputStream byteArrayInputStream = this.f2375f;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f2373d != null) {
            this.f2375f = new ByteArrayInputStream(this.f2373d.toByteArray());
            this.f2373d = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.f2375f;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i4, int i5) {
        InterfaceC0772p0 interfaceC0772p0 = this.f2373d;
        if (interfaceC0772p0 != null) {
            int serializedSize = interfaceC0772p0.getSerializedSize();
            if (serializedSize == 0) {
                this.f2373d = null;
                this.f2375f = null;
                return -1;
            } else if (i5 >= serializedSize) {
                Logger logger = r.f8687b;
                C0771p c0771p = new C0771p(bArr, i4, serializedSize);
                this.f2373d.writeTo(c0771p);
                if (c0771p.J() == 0) {
                    this.f2373d = null;
                    this.f2375f = null;
                    return serializedSize;
                }
                throw new IllegalStateException("Did not write as much data as expected.");
            } else {
                this.f2375f = new ByteArrayInputStream(this.f2373d.toByteArray());
                this.f2373d = null;
            }
        }
        ByteArrayInputStream byteArrayInputStream = this.f2375f;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i4, i5);
        }
        return -1;
    }
}
