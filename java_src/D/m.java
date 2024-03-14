package D;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public abstract class m {
    public final void a(final int i4) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: D.l
            @Override // java.lang.Runnable
            public final void run() {
                m.this.c(i4);
            }
        });
    }

    public final void b(final Typeface typeface) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: D.k
            @Override // java.lang.Runnable
            public final void run() {
                m.this.d(typeface);
            }
        });
    }

    public abstract void c(int i4);

    public abstract void d(Typeface typeface);
}
