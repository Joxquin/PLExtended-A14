package R1;

import android.util.Pair;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1650a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f1651b;

    public /* synthetic */ c(int i4, Object obj) {
        this.f1650a = i4;
        this.f1651b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1650a) {
            case 0:
                Pair pair = (Pair) obj;
                return Pair.create((Integer) pair.first, Float.valueOf(f.b((List) pair.second, ((Integer) this.f1651b).intValue())));
            case 1:
                Integer num = (Integer) this.f1651b;
                Pair pair2 = (Pair) obj;
                return Pair.create((Integer) pair2.first, Float.valueOf(f.b(((List) pair2.second).subList(0, num.intValue() - 1), num.intValue() - 1)));
            default:
                return Boolean.valueOf(!((Set) this.f1651b).contains(((String) ((Pair) obj).first).toLowerCase()));
        }
    }
}
