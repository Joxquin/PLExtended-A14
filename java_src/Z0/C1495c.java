package z0;

import android.app.search.SearchTarget;
import android.os.Process;
/* renamed from: z0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1495c {
    public static String a(String str) {
        return "SESSION_INFO:" + Process.myUserHandle().getIdentifier() + ":toast:" + str;
    }

    public static String b(SearchTarget searchTarget) {
        StringBuilder sb = new StringBuilder(String.format("%s:%s:", "WEB_SUGGEST", Integer.valueOf(Process.myUserHandle().getIdentifier())));
        if (searchTarget == null) {
            sb.append("com.google.android.googlequicksearchbox:SUGGESTION");
            return sb.toString();
        }
        sb.append(searchTarget.getPackageName());
        if (C1498f.c(searchTarget)) {
            sb.append(":RICH_ANSWER");
        } else {
            sb.append(":SUGGESTION");
        }
        return sb.toString();
    }
}
