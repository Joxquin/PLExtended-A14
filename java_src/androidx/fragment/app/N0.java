package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;
/* loaded from: classes.dex */
public final class N0 extends Writer {

    /* renamed from: e  reason: collision with root package name */
    public final StringBuilder f3318e = new StringBuilder(128);

    /* renamed from: d  reason: collision with root package name */
    public final String f3317d = "FragmentManager";

    public final void a() {
        if (this.f3318e.length() > 0) {
            Log.d(this.f3317d, this.f3318e.toString());
            StringBuilder sb = this.f3318e;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i4, int i5) {
        for (int i6 = 0; i6 < i5; i6++) {
            char c4 = cArr[i4 + i6];
            if (c4 == '\n') {
                a();
            } else {
                this.f3318e.append(c4);
            }
        }
    }
}
