package c2;

import android.content.ComponentName;
import android.net.Uri;
import android.os.UserHandle;
import com.android.launcher3.util.ComponentKey;
/* renamed from: c2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0325a {
    public static ComponentKey a(Uri uri) {
        if (uri != null && uri.getQueryParameter("component") != null) {
            try {
                return new ComponentKey(ComponentName.unflattenFromString(uri.getQueryParameter("component")), UserHandle.of(Integer.parseInt(uri.getQueryParameter("user"))));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }
}
