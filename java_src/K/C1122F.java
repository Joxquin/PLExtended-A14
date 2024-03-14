package k;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* renamed from: k.F  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1122F {
    public static void a(View view, EditorInfo editorInfo, InputConnection inputConnection) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof d1) {
                editorInfo.hintText = ((d1) parent).a();
                return;
            }
        }
    }
}
