package g0;

import android.view.View;
import android.view.WindowId;
/* loaded from: classes.dex */
public final class T implements U {

    /* renamed from: a  reason: collision with root package name */
    public final WindowId f9401a;

    public T(View view) {
        this.f9401a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof T) && ((T) obj).f9401a.equals(this.f9401a);
    }

    public final int hashCode() {
        return this.f9401a.hashCode();
    }
}
