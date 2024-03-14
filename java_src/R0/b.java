package R0;

import android.content.pm.PackageInstaller;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.util.PackageUserKey;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements BiConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InstallSessionTracker f1636a;

    public /* synthetic */ b(InstallSessionTracker installSessionTracker) {
        this.f1636a = installSessionTracker;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        InstallSessionTracker.a(this.f1636a, (PackageUserKey) obj, (PackageInstaller.SessionInfo) obj2);
    }
}
