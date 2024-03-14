package P0;

import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i4 = NotificationListener.f4912d;
        return ((NotificationKeyData) obj).notificationKey;
    }
}
