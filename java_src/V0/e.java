package V0;

import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1791a;

    public /* synthetic */ e(int i4) {
        this.f1791a = i4;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Object obj2;
        switch (this.f1791a) {
            case 0:
                obj2 = (ComponentKey) obj;
                break;
            default:
                obj2 = (AppInfo) obj;
                break;
        }
        return Objects.nonNull(obj2);
    }
}
