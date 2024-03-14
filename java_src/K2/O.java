package K2;

import L1.ExecutorC0050e;
import android.provider.DeviceConfig;
import java.util.Set;
/* loaded from: classes.dex */
public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final String f955a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f956b = null;

    public O(String str) {
        this.f955a = str;
    }

    public final boolean a() {
        if (this.f956b == null) {
            this.f956b = Boolean.valueOf(DeviceConfig.getBoolean("launcher", this.f955a, true));
            DeviceConfig.addOnPropertiesChangedListener("launcher", new ExecutorC0050e(), new DeviceConfig.OnPropertiesChangedListener() { // from class: K2.N
                public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                    O o4 = O.this;
                    o4.getClass();
                    Set keyset = properties.getKeyset();
                    String str = o4.f955a;
                    if (keyset.contains(str)) {
                        o4.f956b = Boolean.valueOf(properties.getBoolean(str, true));
                    }
                }
            });
        }
        return this.f956b.booleanValue();
    }
}
