package R0;

import android.os.UserHandle;
import java.util.Map;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return (UserHandle) ((Map.Entry) obj).getKey();
    }
}
