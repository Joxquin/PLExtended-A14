package androidx.core.view;

import android.view.MotionEvent;
/* renamed from: androidx.core.view.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0175l {
    public static boolean a(MotionEvent motionEvent, int i4) {
        return (motionEvent.getSource() & i4) == i4;
    }
}
