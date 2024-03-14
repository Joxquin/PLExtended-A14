package Y;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Objects;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f2264a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2265b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2266c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2267d;

    public i(int i4, int i5, long j4, long j5) {
        this.f2264a = i4;
        this.f2265b = i5;
        this.f2266c = j4;
        this.f2267d = j5;
    }

    public static i a(File file) {
        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
        try {
            i iVar = new i(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
            dataInputStream.close();
            return iVar;
        } catch (Throwable th) {
            try {
                dataInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void b(File file) {
        file.delete();
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        try {
            dataOutputStream.writeInt(this.f2264a);
            dataOutputStream.writeInt(this.f2265b);
            dataOutputStream.writeLong(this.f2266c);
            dataOutputStream.writeLong(this.f2267d);
            dataOutputStream.close();
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f2265b == iVar.f2265b && this.f2266c == iVar.f2266c && this.f2264a == iVar.f2264a && this.f2267d == iVar.f2267d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f2265b), Long.valueOf(this.f2266c), Integer.valueOf(this.f2264a), Long.valueOf(this.f2267d));
    }
}
