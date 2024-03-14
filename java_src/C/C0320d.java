package c;

import android.content.Intent;
import androidx.activity.l;
import kotlin.jvm.internal.h;
/* renamed from: c.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0320d extends AbstractC0318b {
    @Override // c.AbstractC0318b
    public final Intent a(l context, Object obj) {
        Intent input = (Intent) obj;
        h.e(context, "context");
        h.e(input, "input");
        return input;
    }

    @Override // c.AbstractC0318b
    public final Object c(Intent intent, int i4) {
        return new androidx.activity.result.b(intent, i4);
    }
}
