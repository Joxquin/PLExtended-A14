package androidx.core.view;

import android.view.View;
/* loaded from: classes.dex */
public final class I {
    public static CharSequence a(View view) {
        return view.getStateDescription();
    }

    public static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }
}
