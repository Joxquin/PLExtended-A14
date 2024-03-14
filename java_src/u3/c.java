package u3;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.i;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.J;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.k0;
/* loaded from: classes.dex */
public final class c extends d {
    private volatile c _immediate;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f12439f;

    /* renamed from: g  reason: collision with root package name */
    public final String f12440g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f12441h;

    /* renamed from: i  reason: collision with root package name */
    public final c f12442i;

    public c(Handler handler, String str, boolean z4) {
        this.f12439f = handler;
        this.f12440g = str;
        this.f12441h = z4;
        this._immediate = z4 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, str, true);
            this._immediate = cVar;
        }
        this.f12442i = cVar;
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(i context, Runnable block) {
        h.e(context, "context");
        h.e(block, "block");
        if (this.f12439f.post(block)) {
            return;
        }
        c0.a(context, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        J.f11308b.B(context, block);
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final boolean C(i context) {
        h.e(context, "context");
        return (this.f12441h && h.a(Looper.myLooper(), this.f12439f.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.k0
    public final k0 D() {
        return this.f12442i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f12439f == this.f12439f;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f12439f);
    }

    @Override // kotlinx.coroutines.k0, kotlinx.coroutines.AbstractC1258x
    public final String toString() {
        k0 k0Var;
        String str;
        v3.d dVar = J.f11307a;
        k0 k0Var2 = v.f11495a;
        if (this == k0Var2) {
            str = "Dispatchers.Main";
        } else {
            try {
                k0Var = k0Var2.D();
            } catch (UnsupportedOperationException unused) {
                k0Var = null;
            }
            str = this == k0Var ? "Dispatchers.Main.immediate" : null;
        }
        if (str == null) {
            String str2 = this.f12440g;
            if (str2 == null) {
                str2 = this.f12439f.toString();
                h.d(str2, "handler.toString()");
            }
            return this.f12441h ? str2.concat(".immediate") : str2;
        }
        return str;
    }
}
