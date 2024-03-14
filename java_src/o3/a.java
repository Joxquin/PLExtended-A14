package o3;

import java.util.Random;
/* loaded from: classes.dex */
public abstract class a extends d {
    @Override // o3.d
    public final int a() {
        return b().nextInt();
    }

    public abstract Random b();
}
