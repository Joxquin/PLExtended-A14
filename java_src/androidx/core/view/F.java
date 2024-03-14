package androidx.core.view;

import android.view.View;
/* loaded from: classes.dex */
public final class F {
    public static int a(View view) {
        return view.getImportantForAutofill();
    }

    public static void b(View view, int i4) {
        view.setImportantForAutofill(i4);
    }
}
