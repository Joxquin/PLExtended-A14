package K1;

import J1.C0022e;
import J1.t;
import J1.v;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class a {
    public static Bundle a(String str, String str2, int i4, long j4, Bundle bundle, t tVar, C0022e c0022e) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("PackageName", str);
        bundle2.putString("ActivityName", str2);
        bundle2.putInt("TaskId", i4);
        bundle2.putLong("CaptureTimestampMs", j4);
        bundle2.putBundle("AssistBundle", bundle);
        if (c0022e == null) {
            bundle2.putBundle("Contents", null);
        } else {
            bundle2.putBundle("Contents", c0022e.a());
        }
        if (tVar == null) {
            bundle2.putBundle("InteractionContext", null);
        } else {
            bundle2.putBundle("InteractionContext", tVar.a());
        }
        bundle2.putInt("Version", 4);
        bundle2.putInt("BundleTypedVersion", 3);
        return bundle2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e0  */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [android.os.Bundle, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.os.Bundle, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle b(J1.n r26) {
        /*
            Method dump skipped, instructions count: 1132
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: K1.a.b(J1.n):android.os.Bundle");
    }

    public static Bundle c(String str, String str2, int i4, long j4, t tVar, Bundle bundle, v vVar) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("PackageName", str);
        bundle2.putString("ActivityName", str2);
        bundle2.putInt("TaskId", i4);
        bundle2.putLong("CaptureTimestampMs", j4);
        bundle2.putBundle("InteractionContext", tVar.a());
        bundle2.putBundle("AssistBundle", bundle);
        if (vVar == null) {
            bundle2.putBundle("ParsedViewHierarchy", null);
        } else {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("acquisitionStartTime", 0L);
            bundle3.putLong("acquisitionEndTime", 0L);
            bundle3.putBoolean("isHomeActivity", false);
            bundle3.putParcelableArrayList("windows", null);
            bundle3.putBoolean("hasKnownIssues", false);
            bundle3.putString("packageName", null);
            bundle3.putString("activityClassName", null);
            bundle3.putBundle("insetsRect", null);
            bundle2.putBundle("ParsedViewHierarchy", bundle3);
        }
        bundle2.putInt("Version", 4);
        bundle2.putInt("BundleTypedVersion", 3);
        return bundle2;
    }
}
