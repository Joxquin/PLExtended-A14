package e;

import android.content.IntentFilter;
/* renamed from: e.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0800A {

    /* renamed from: a  reason: collision with root package name */
    public z f8767a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f8768b;

    public AbstractC0800A(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D) {
        this.f8768b = layoutInflater$Factory2C0803D;
    }

    public final void a() {
        z zVar = this.f8767a;
        if (zVar != null) {
            try {
                this.f8768b.f8826l.unregisterReceiver(zVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f8767a = null;
        }
    }

    public abstract int b();

    public final void c() {
        IntentFilter intentFilter;
        a();
        switch (((y) this).f9003c) {
            case 0:
                intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                break;
            default:
                intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.TIME_SET");
                intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter.addAction("android.intent.action.TIME_TICK");
                break;
        }
        if (intentFilter.countActions() == 0) {
            return;
        }
        if (this.f8767a == null) {
            this.f8767a = new z(this);
        }
        this.f8768b.f8826l.registerReceiver(this.f8767a, intentFilter);
    }
}
