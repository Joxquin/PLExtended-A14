package J1;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public float f697a;

    /* renamed from: b  reason: collision with root package name */
    public float f698b;

    /* renamed from: c  reason: collision with root package name */
    public float f699c;

    /* renamed from: d  reason: collision with root package name */
    public float f700d;

    public H() {
    }

    public H(Bundle bundle) {
        if (bundle.containsKey("left")) {
            this.f697a = bundle.getFloat("left");
        }
        if (bundle.containsKey("top")) {
            this.f698b = bundle.getFloat("top");
        }
        if (bundle.containsKey("width")) {
            this.f699c = bundle.getFloat("width");
        }
        if (bundle.containsKey("height")) {
            this.f700d = bundle.getFloat("height");
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putFloat("left", this.f697a);
        bundle.putFloat("top", this.f698b);
        bundle.putFloat("width", this.f699c);
        bundle.putFloat("height", this.f700d);
        return bundle;
    }
}
