package K2;

import android.content.Context;
import com.android.internal.util.LatencyTracker;
import java.util.HashSet;
import java.util.Set;
/* renamed from: K2.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0039l {

    /* renamed from: a  reason: collision with root package name */
    public final Set f995a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public final LatencyTracker f996b;

    public C0039l(Context context) {
        this.f996b = LatencyTracker.getInstance(context);
    }

    public final void a() {
        Set set = this.f995a;
        if (((HashSet) set).isEmpty()) {
            return;
        }
        this.f996b.onActionCancel(22);
        ((HashSet) set).clear();
    }
}
