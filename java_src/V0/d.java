package V0;

import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.secondarydisplay.PinnedAppsAdapter;
import com.android.launcher3.util.ComponentKey;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1789a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f1790b;

    public /* synthetic */ d(int i4, Object obj) {
        this.f1789a = i4;
        this.f1790b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1789a) {
            case 0:
                return PinnedAppsAdapter.b((PinnedAppsAdapter) this.f1790b, (String) obj);
            case 1:
                return PinnedAppsAdapter.f((PinnedAppsAdapter) this.f1790b, (ComponentKey) obj);
            default:
                return ((AllAppsStore) this.f1790b).getApp((ComponentKey) obj);
        }
    }
}
