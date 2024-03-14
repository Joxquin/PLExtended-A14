package com.android.quickstep.util;

import android.content.Context;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class AssistUtils implements ResourceBasedOverride {
    public static AssistUtils newInstance(Context context) {
        return (AssistUtils) ResourceBasedOverride.Overrides.getObject(R.string.assist_utils_class, context, AssistUtils.class);
    }

    public int[] getSysUiAssistOverrideInvocationTypes() {
        return new int[0];
    }

    public boolean tryStartAssistOverride(int i4) {
        return false;
    }
}
