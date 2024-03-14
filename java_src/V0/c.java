package V0;

import com.android.launcher3.util.ComponentKey;
import java.util.Set;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1787a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Set f1788b;

    public /* synthetic */ c(Set set, int i4) {
        this.f1787a = i4;
        this.f1788b = set;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        boolean add;
        switch (this.f1787a) {
            case 0:
            default:
                add = this.f1788b.add((ComponentKey) obj);
                break;
            case 1:
                add = this.f1788b.remove((ComponentKey) obj);
                break;
        }
        return Boolean.valueOf(add);
    }
}
