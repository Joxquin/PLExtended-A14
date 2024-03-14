package x3;

import java.io.InterruptedIOException;
/* loaded from: classes.dex */
public class p {
    static {
        new o();
    }

    public void a() {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
    }
}
