package J1;

import android.os.Bundle;
/* renamed from: J1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0018a {

    /* renamed from: a  reason: collision with root package name */
    public String f709a;

    /* renamed from: b  reason: collision with root package name */
    public String f710b;

    public C0018a(Bundle bundle) {
        if (bundle.containsKey("displayText")) {
            this.f709a = bundle.getString("displayText");
        }
        if (bundle.containsKey("subtitle")) {
            this.f710b = bundle.getString("subtitle");
        }
    }
}
