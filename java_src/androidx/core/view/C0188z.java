package androidx.core.view;

import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.core.view.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0188z {
    public static Rect a(View view) {
        return view.getClipBounds();
    }

    public static void b(View view, Rect rect) {
        view.setClipBounds(rect);
    }
}
