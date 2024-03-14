package com.android.launcher3;

import android.view.KeyboardShortcutInfo;
import android.view.View;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.logging.StatsLogManager;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class V implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4502a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4503b;

    public /* synthetic */ V(int i4, Object obj) {
        this.f4502a = i4;
        this.f4503b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4502a) {
            case 0:
                ((List) this.f4503b).add(((CellLayout) ((View) obj)).mShortcutsAndWidgets);
                return;
            case 1:
                ((StatsLogManager.StatsLogger) this.f4503b).log((StatsLogManager.EventEnum) obj);
                return;
            default:
                BaseAccessibilityDelegate.LauncherAction launcherAction = (BaseAccessibilityDelegate.LauncherAction) obj;
                ((ArrayList) this.f4503b).add(new KeyboardShortcutInfo(launcherAction.accessibilityAction.getLabel(), launcherAction.keyCode, 4096));
                return;
        }
    }
}
