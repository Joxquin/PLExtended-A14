package S0;

import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return String.format("intent LIKE '%%' || '%s' || '%%' ", (String) obj);
    }
}
