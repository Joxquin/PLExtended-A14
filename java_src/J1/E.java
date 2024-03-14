package J1;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class E {

    /* renamed from: a  reason: collision with root package name */
    public String f678a;

    /* renamed from: b  reason: collision with root package name */
    public String f679b;

    public E() {
    }

    public E(Bundle bundle) {
        if (bundle.containsKey("name")) {
            this.f678a = bundle.getString("name");
        }
        if (bundle.containsKey("value")) {
            this.f679b = bundle.getString("value");
        }
    }
}
