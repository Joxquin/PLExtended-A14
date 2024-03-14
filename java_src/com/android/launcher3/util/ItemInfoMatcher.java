package com.android.launcher3.util;

import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class ItemInfoMatcher {
    private static final ComponentName EMPTY_COMPONENT = new ComponentName("", "");

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f5271a = 0;

    public static boolean a(UserHandle userHandle, HashSet hashSet, ItemInfo itemInfo) {
        if (itemInfo != null && itemInfo.user.equals(userHandle)) {
            ComponentName targetComponent = itemInfo.getTargetComponent();
            if (targetComponent == null) {
                targetComponent = EMPTY_COMPONENT;
            }
            if (hashSet.contains(targetComponent)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(UserHandle userHandle, Set set, ItemInfo itemInfo) {
        if (itemInfo != null && itemInfo.user.equals(userHandle)) {
            ComponentName targetComponent = itemInfo.getTargetComponent();
            if (targetComponent == null) {
                targetComponent = EMPTY_COMPONENT;
            }
            if (set.contains(targetComponent.getPackageName())) {
                return true;
            }
        }
        return false;
    }
}
