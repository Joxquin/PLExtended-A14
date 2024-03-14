package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.internal.C1240g;
import kotlinx.coroutines.internal.C1241h;
/* renamed from: kotlinx.coroutines.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1258x extends kotlin.coroutines.a implements kotlin.coroutines.e {

    /* renamed from: e  reason: collision with root package name */
    public static final C1257w f11521e = new C1257w();

    public AbstractC1258x() {
        super(kotlin.coroutines.d.f11251d);
    }

    public abstract void B(kotlin.coroutines.i iVar, Runnable runnable);

    public boolean C(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return true;
    }

    @Override // kotlin.coroutines.e
    public final void c(kotlin.coroutines.c cVar) {
        C1240g c1240g = (C1240g) cVar;
        do {
        } while (c1240g.f11468k.f12366b == C1241h.f11470b);
        Object obj = c1240g.f11468k.f12366b;
        C1232h c1232h = obj instanceof C1232h ? (C1232h) obj : null;
        if (c1232h != null) {
            c1232h.m();
        }
    }

    @Override // kotlin.coroutines.e
    public final C1240g d(kotlin.coroutines.c continuation) {
        kotlin.jvm.internal.h.e(continuation, "continuation");
        return new C1240g(this, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // kotlin.coroutines.a, kotlin.coroutines.i
    public final kotlin.coroutines.g e(kotlin.coroutines.h key) {
        ?? r32;
        kotlin.jvm.internal.h.e(key, "key");
        if (key instanceof kotlin.coroutines.b) {
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            kotlin.coroutines.h key2 = this.f11248d;
            kotlin.jvm.internal.h.e(key2, "key");
            if (!(key2 == bVar || bVar.f11250e == key2)) {
                return null;
            }
            kotlin.coroutines.g a4 = bVar.a(this);
            boolean z4 = a4 instanceof kotlin.coroutines.g;
            r32 = a4;
            if (!z4) {
                return null;
            }
        } else {
            this = this;
            if (kotlin.coroutines.d.f11251d != key) {
                r32 = 0;
            }
        }
        return r32;
    }

    public String toString() {
        String a4 = D.a(this);
        String b4 = D.b(this);
        return a4 + "@" + b4;
    }

    @Override // kotlin.coroutines.a, kotlin.coroutines.i
    public final kotlin.coroutines.i z(kotlin.coroutines.h key) {
        kotlin.jvm.internal.h.e(key, "key");
        if (!(key instanceof kotlin.coroutines.b)) {
            return kotlin.coroutines.d.f11251d == key ? EmptyCoroutineContext.f11247d : this;
        }
        kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
        kotlin.coroutines.h key2 = this.f11248d;
        kotlin.jvm.internal.h.e(key2, "key");
        return (!(key2 == bVar || bVar.f11250e == key2) || bVar.a(this) == null) ? this : EmptyCoroutineContext.f11247d;
    }
}
