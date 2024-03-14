package z0;

import android.app.search.SearchTarget;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
/* renamed from: z0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1499g {

    /* renamed from: a  reason: collision with root package name */
    public static final SearchTarget f12995a;

    /* renamed from: b  reason: collision with root package name */
    public static final SearchTarget f12996b;

    static {
        UserHandle myUserHandle = Process.myUserHandle();
        f12995a = new SearchTarget.Builder(262144, "empty_divider", "divider").setPackageName("").setUserHandle(myUserHandle).setExtras(new Bundle()).build();
        f12996b = new SearchTarget.Builder(262144, "section_header", "section_header").setPackageName("").setUserHandle(myUserHandle).setExtras(new Bundle()).build();
    }
}
