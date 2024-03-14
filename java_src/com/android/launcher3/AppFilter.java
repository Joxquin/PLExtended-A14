package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import com.android.systemui.shared.R;
import java.util.Arrays;
import java.util.Set;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class AppFilter {
    private final Set mFilteredComponents;

    public AppFilter(Context context) {
        this.mFilteredComponents = (Set) Arrays.stream(context.getResources().getStringArray(R.array.filtered_components)).map(new C0327a()).collect(Collectors.toSet());
    }

    public final boolean shouldShowApp(ComponentName componentName) {
        return !this.mFilteredComponents.contains(componentName);
    }
}
