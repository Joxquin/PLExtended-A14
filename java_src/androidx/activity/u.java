package androidx.activity;

import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class u {
    public static final void a(View view, t onBackPressedDispatcherOwner) {
        kotlin.jvm.internal.h.e(view, "<this>");
        kotlin.jvm.internal.h.e(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
