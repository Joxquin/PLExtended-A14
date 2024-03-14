package R1;

import android.util.Pair;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1649a;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1649a) {
            case 0:
                return (Float) ((Pair) obj).second;
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                return Pair.create((Integer) entry.getKey(), (List) entry.getValue());
            case 2:
                return Boolean.valueOf(((Float) ((Pair) obj).second).floatValue() > 0.5f);
            case 3:
                return (Float) ((Pair) obj).second;
            case 4:
                return (String) ((Pair) obj).first;
            default:
                return Float.valueOf(1.0f / ((Float) obj).floatValue());
        }
    }
}
