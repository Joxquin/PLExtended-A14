package Y2;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class l extends InputStream {

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ int f2341f = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Parcelable f2342d;

    /* renamed from: e  reason: collision with root package name */
    public InputStream f2343e;

    public l(Parcelable parcelable) {
        this.f2342d = parcelable;
    }

    public final InputStream a() {
        if (this.f2343e == null) {
            Parcel obtain = Parcel.obtain();
            obtain.writeParcelable(this.f2342d, 0);
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            this.f2343e = new ByteArrayInputStream(marshall);
        }
        return this.f2343e;
    }

    @Override // java.io.InputStream
    public final int available() {
        return a().available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f2343e;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i4) {
        InputStream inputStream = this.f2343e;
        if (inputStream != null) {
            inputStream.mark(i4);
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        return a().read();
    }

    @Override // java.io.InputStream
    public final void reset() {
        InputStream inputStream = this.f2343e;
        if (inputStream != null) {
            inputStream.reset();
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j4) {
        if (j4 <= 0) {
            return 0L;
        }
        return a().skip(j4);
    }

    public final String toString() {
        return "ParcelableInputStream[V: " + this.f2342d + "]";
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i4, int i5) {
        return a().read(bArr, i4, i5);
    }
}
