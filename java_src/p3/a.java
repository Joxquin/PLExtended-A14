package p3;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class a extends o3.a {
    @Override // o3.a
    public final Random b() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        h.d(current, "current()");
        return current;
    }
}
