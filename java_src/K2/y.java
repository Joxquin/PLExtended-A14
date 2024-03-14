package K2;

import android.app.smartspace.SmartspaceAction;
import java.util.List;
import java.util.function.IntPredicate;
/* loaded from: classes.dex */
public final class y implements IntPredicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f1014a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f1015b;

    public y(List list, List list2) {
        this.f1014a = list;
        this.f1015b = list2;
    }

    @Override // java.util.function.IntPredicate
    public final boolean test(int i4) {
        return z.b((SmartspaceAction) this.f1014a.get(i4), (SmartspaceAction) this.f1015b.get(i4));
    }
}
