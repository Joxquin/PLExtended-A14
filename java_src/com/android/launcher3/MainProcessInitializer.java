package com.android.launcher3;

import android.content.Context;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class MainProcessInitializer implements ResourceBasedOverride {
    public static void initialize(Context context) {
        ((MainProcessInitializer) ResourceBasedOverride.Overrides.getObject(R.string.main_process_initializer_class, context, MainProcessInitializer.class)).init(context);
    }

    public void init(Context context) {
        FileLog.setDir(context.getApplicationContext().getFilesDir());
        IconShape.init(context);
    }
}
