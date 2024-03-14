package io.grpc.binder;

import O2.m;
import android.content.ComponentName;
import android.content.Intent;
import java.net.SocketAddress;
/* loaded from: classes.dex */
public class AndroidComponentAddress extends SocketAddress {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f9694d = 0;
    private static final long serialVersionUID = 0;
    private final Intent bindIntent;

    public AndroidComponentAddress(Intent intent) {
        m.b("Missing required component", intent.getComponent() != null);
        this.bindIntent = intent;
    }

    public final Intent a() {
        return this.bindIntent.cloneFilter();
    }

    public final ComponentName b() {
        return this.bindIntent.getComponent();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidComponentAddress) {
            return this.bindIntent.filterEquals(((AndroidComponentAddress) obj).bindIntent);
        }
        return false;
    }

    public final int hashCode() {
        return this.bindIntent.filterHashCode();
    }

    public final String toString() {
        return "AndroidComponentAddress[" + this.bindIntent + "]";
    }
}
