package K2;

import android.app.smartspace.SmartspaceTarget;
import java.util.UUID;
/* loaded from: classes.dex */
public final class K {
    public static int a(SmartspaceTarget smartspaceTarget) {
        if (smartspaceTarget == null) {
            return P.a(UUID.randomUUID().toString());
        }
        String smartspaceTargetId = smartspaceTarget.getSmartspaceTargetId();
        return (smartspaceTargetId == null || smartspaceTargetId.isEmpty()) ? P.a(String.valueOf(smartspaceTarget.getCreationTimeMillis())) : P.a(smartspaceTargetId);
    }

    public static int b(String str) {
        return (str == null || str.isEmpty()) ? P.a(UUID.randomUUID().toString()) : P.a(str);
    }
}
