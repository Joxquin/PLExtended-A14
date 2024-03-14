package com.android.launcher3.icons;

import android.content.ComponentName;
import android.util.Log;
import com.android.launcher3.model.data.IconRequestInfo;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4666a;

    public /* synthetic */ f(int i4) {
        this.f4666a = i4;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4666a) {
            case 0:
                IconRequestInfo iconRequestInfo = (IconRequestInfo) obj;
                if (iconRequestInfo.itemInfo.itemType == 6) {
                    Log.e("Launcher.IconCache", "Skipping Item info for deep shortcut: " + iconRequestInfo.itemInfo, new IllegalStateException());
                    return false;
                }
                return true;
            default:
                return Objects.nonNull((ComponentName) obj);
        }
    }
}
