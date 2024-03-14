package R1;

import android.util.Pair;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Pair pair = (Pair) obj;
        return pair.first + "(" + pair.second + ")";
    }
}
