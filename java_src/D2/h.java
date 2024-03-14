package D2;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    public static h f325b;

    /* renamed from: a  reason: collision with root package name */
    public final Object f326a = new Object();

    public h() {
        new Handler(Looper.getMainLooper(), new f(this));
    }

    public static h a() {
        if (f325b == null) {
            f325b = new h();
        }
        return f325b;
    }
}
