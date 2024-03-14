package com.google.android.apps.nexuslauncher;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.logging.KeyboardStateManager;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public class NexusLauncherEditText extends ExtendedEditText {

    /* renamed from: d  reason: collision with root package name */
    public Runnable f6483d;

    public NexusLauncherEditText(Context context) {
        super(context);
    }

    public void viewClicked(InputMethodManager inputMethodManager) {
        super.viewClicked(inputMethodManager);
        Runnable runnable = this.f6483d;
        if (runnable != null) {
            runnable.run();
        }
        if (inputMethodManager != null) {
            ((ActivityContext) ActivityContext.lookupContext(getContext())).getStatsLogManager().keyboardStateManager().setKeyboardState(KeyboardStateManager.KeyboardState.SHOW);
        }
    }

    public NexusLauncherEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NexusLauncherEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
