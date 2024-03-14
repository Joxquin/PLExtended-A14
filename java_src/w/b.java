package W;

import android.util.Log;
import androidx.lifecycle.y;
import androidx.lifecycle.z;
/* loaded from: classes.dex */
public final class b extends y {
    @Override // androidx.lifecycle.x
    public final void e() {
        if (Log.isLoggable("LoaderManager", 2)) {
            Log.v("LoaderManager", "  Starting: " + this);
        }
        throw null;
    }

    @Override // androidx.lifecycle.x
    public final void f() {
        if (Log.isLoggable("LoaderManager", 2)) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        throw null;
    }

    @Override // androidx.lifecycle.x
    public final void g(z zVar) {
        super.g(zVar);
    }

    @Override // androidx.lifecycle.y
    public final void h(Object obj) {
        super.h(obj);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #0 : ");
        throw null;
    }
}
