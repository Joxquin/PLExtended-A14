package X2;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
/* loaded from: classes.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public static final B f2089a;

    static {
        B q02;
        AtomicReference atomicReference = new AtomicReference();
        try {
            q02 = (B) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(B.class).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e4) {
            atomicReference.set(e4);
            q02 = new Q0();
        } catch (Exception e5) {
            throw new RuntimeException("Storage override failed to initialize", e5);
        }
        f2089a = q02;
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            C.f2090a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
        }
    }
}
