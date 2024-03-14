package R1;

import java.util.function.BinaryOperator;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements BinaryOperator {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return Float.valueOf(Float.sum(((Float) obj).floatValue(), ((Float) obj2).floatValue()));
    }
}
