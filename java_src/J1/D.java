package J1;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class D {

    /* renamed from: a  reason: collision with root package name */
    public boolean f676a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f677b;

    public D(Bundle bundle) {
        if (bundle.containsKey("containsPendingIntents")) {
            this.f676a = bundle.getBoolean("containsPendingIntents");
        }
        if (bundle.containsKey("containsBitmaps")) {
            this.f677b = bundle.getBoolean("containsBitmaps");
        }
    }
}
